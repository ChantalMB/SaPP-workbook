# cleaning things up
library(tidyverse)
library(tidytext)

# a package for stopwards that goes beyond what tidyverse provides
library(stopwords)

# for creating topic models
library(reshape2)
library(topicmodels)

# palettes 
library(RColorBrewer)
library(pals)

# graphing and making it interactive
library(ggplot2)
library(ggiraph)

# making streamgraphs!
library(streamgraph)

# for saving the graph
library(htmlwidgets)
library(IRdisplay)

# read in data
bmSatire <- read_csv("BMSatire-EM.csv")

# In our tibble "bmSatire_df":
# the column "id" will correspond to the id in the CSV
# and we are stripping the text column of numbers so it is uniformly "text"

bmSatire_df <- tibble(id = bmSatire$id, 
                      text = (str_remove_all(bmSatire$desc, "[0-9]")), 
                      date = bmSatire$publicationDate)

# check out what it looks like now!
print("Showing: bmSatire_df")
bmSatire_df

tidy_bmSatire <- bmSatire_df %>%
  unnest_tokens(word, text)

# all of the words from the document descriptions
print("tidy_bmSatire")
tidy_bmSatire

langSet <- c(stopwords(language = "es", source = "nltk"),
             stopwords(language = "fr", source = "nltk"))

# format them to match our data aka put them in a tibble 
my_stopwords <- tibble(word = langSet, lexicon = "nltk")

# combine with tidytext stop_words
stopwords <- bind_rows(stop_words, my_stopwords)

# delete stopwords from our data
tidy_bmSatire <- tidy_bmSatire %>%
  anti_join(stopwords)

# look at tidy_bmSatire now!
tidy_bmSatire

# this line will take a couple of seconds to finish!
bmSatire_words <- tidy_bmSatire %>%
  count(id, word, sort = TRUE)

# take a look at the frequencies... lots of "eye" mentions at the top, why?
bmSatire_words

# turn that into a matrix
# dtm = document term matrix
dtm <- bmSatire_words %>%
  cast_dtm(id, word, n)

# this is how many topics we're going to generate
K <- 15

# topic models need a random number for calculating the topics 
# setting the "seed"/based number for this allows those running this code to generate the same sequence of random numbers every time these calculations are done
# so we'll always have the same results!
set.seed(9161)

# here's a solid, simple explanation of what LDA modelling is: http://bit.do/ELI5-LDA
# compute the LDA model, inference via 1000 iterations of Gibbs sampling
topicModel <- LDA(dtm, K, method="Gibbs", control=list(iter = 1000, verbose = 25))

# have a look a some of the results (posterior distributions)
tmResult <- posterior(topicModel)

# format of the resulting object
attributes(tmResult)

# the number of columns is the lengthOfVocab
ncol(dtm)

# topics are probability distributions over the entire lengthOfVocab
beta <- tmResult$terms   # get beta from results
dim(beta)                # K distributions over ncol(DTM) terms

# the number of rows is size of collection
nrow(dtm)

# for every item in the dataset we have a probability distribution of its contained topics
theta <- tmResult$topics 
dim(theta)                # number of documents distributed over K topics        

# the way this works means that every topic we generated has every word, but in different proportions
# so let's pull the top 7 terms from every topic to see how the proportions were distributed and thus
# figure out what each topic is about
top7termsPerTopic <- terms(topicModel, 7)
topicNames <- apply(top7termsPerTopic, 2, paste, collapse=" ")

# look at your topics:
topicNames

# this is creating groupings of decades from the original list of dates
# using substr() we grab the first 3 numbers of the listed year, then attach a "0" to the end of that
# ex. from 1743, substr() takes just "174" then pastes a "0", so it becomes 1740
bmSatire$decade <- paste0(substr(bmSatire$publicationDate, 0, 3), "0")

# we get the mean topic proportions per decade by calculating the
# number of documents distributed over K topics (theta) by the list of decade
topic_proportion_per_decade <- aggregate(theta, by = list(decade = bmSatire$decade), mean)

# set topic names to aggregated columns
colnames(topic_proportion_per_decade)[2:(K+1)] <- topicNames

# reshape the data frame created for visualization
vizDataFrame <- melt(topic_proportion_per_decade, id.vars = "decade")

# make sure nothing looks fishy:
vizDataFrame

# make a custom colour palette!
# the brewer.pal() asks for the number of colours in the palette you're using, then the name of the palette from the ColorBrewer palette library
# the argument after, "(15)", is how many colours we need for this graph
mycolors <- colorRampPalette(brewer.pal(11, "Spectral"))(15)

# stacked bar plot

ggplot(vizDataFrame, aes(x=decade, y=value, fill=variable)) +
  geom_bar(stat = "identity") +   # we want the heights of the bars to represent values in the data, so we set stat to "identity"
  ylab("proportion") + # then label the y axis
  scale_fill_manual(values = mycolors) + # add our palette
  theme(axis.text.x = element_text(angle = 90, hjust = 1)) # this angles the labels (the dates) that are on the x-axis


# interactive stacked bar plot
ttText <- paste(vizDataFrame$variable, "<br/>", vizDataFrame$value)

gg_bar <- ggplot(vizDataFrame, aes(x=decade, y=value, fill=variable)) +
  geom_bar_interactive(stat = "identity", show.legend = FALSE, tooltip = ttText, data_id = ttText) + 
  ylab("proportion") +
  scale_fill_manual(values = mycolors) +
  theme(axis.text.x = element_text(angle = 90, hjust = 1))

tooltip_css <- "background-color:gray;color:white;font-style:italic;padding:10px;border-radius:5px;font-family:Arial;"

girafe(ggobj = gg_bar) %>%
    girafe_options(
      opts_hover_inv(css = "opacity:0.5;"),
      opts_hover(css = "fill:clear;stroke:black;"),
      opts_tooltip(css = tooltip_css)
      )

#Basic stream graph: just give the 3 arguments
strgph <- streamgraph(vizDataFrame, key="variable", value="value", date="decade",
                  width="900px", height="300px") %>%
                  sg_fill_manual(values = mycolors) %>%
                  sg_axis_y(0) %>%
                  sg_legend(TRUE, "Topic: ")
strgph 

# save as widget
library(htmlwidgets)
saveWidget(pp, file=paste0( getwd(), "/BMSatireTopics.html"))
