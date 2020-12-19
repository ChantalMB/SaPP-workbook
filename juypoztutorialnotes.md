# Jupyter Notebooks & OzGLAM Exploration


## References
- https://glam-workbench.github.io/
- https://zenodo.org/record/3545001#.X9b4i-lKh84
- https://glam-workbench.github.io/getting-started/

## Outline
- Install miniconda
  - Website: https://docs.conda.io/en/latest/miniconda.html
    - You're going to want to download the python 3 option because python 2 has been deprecated as of Jan 1st 2020
  - Check install via `conda info`
  - Create a python virtual environment (explain why)
    - `conda create --name bokeh-env python=3.7`
    - `source activate bokeh-env` --> For Linux/MacOS
    - `activate bokeh-env` #For Windows
    - Why?
      - It isolates your working environment --> you can install only the packages you need and they will stay local to that environment (prevents version conflicts and lets you choose your version of Python) and bonus is if you really mess up somehow you can always delete the environment and totally start over
      - Can share environment: activate environment then conda env export > environment. yml
- Installing Jupyter Notebook locally
  - Activate conda if it isn't already
    - You can now USE IT to install JN! --> `conda install -c conda-forge notebook`
  - If you run into any errors, remember the course discord!
    - When you're new to this you might not be able to google things in a way that will get you the results you need, so asking your peers (like me!) or Dr. Graham can help you learn the correct terminiology and thus improve you self-sufficient googling skills!
- Explore OzGLAM
  - Simple intro
    - At the point of you watching this tutorial, I anticipate you've already poked around on this website a bit since a lot of the work we're doing for this course is based off of it, but a quick little intro regardless
    - This site consolidates open data along with tools and tutorials, conducted primarily through JNs, to help you in exploring data from the GLAM sector-- so: galleries, libraries, archives, and museums!
      - To quote the syllabus, this GLAM workbench can help us in the pursuit of learning how to the effectively use cultural heritage data, information, and knowledge to explore ways in which it can be used to improve human welfare
  - Primarily focused on Australia and New Zealand but still useful for experiemental learning
    - [GLAM CSV Explorer](https://glam-workbench.github.io/csv-explorer/)
      - There's the GLAM CSV Explorer under `Data Sources` which allows you to look at data from over 600 GLAM datasets-- since this is likely your first time doing work in this field, this is something worth checking out so you can get an idea of what its like working with data from the GLAM sector.
  - [Show LAC notebooks](https://glam-workbench.github.io/lac/)
    - So, asidde from that, while this is mostly data from NZ and AUS, there's still a little bit of Canada that you might want to check out for this class!
    - Under libraries, we have the LAC!
    - As the page says, the LAC doesn't provide downloadable data, but luckily there's a JN linked dedicated to showing you how to scrape data from the LAC archive --> it's a bit dated and needs some modifications, so if you have some time and want a challenge, see if you can get it working!
- Load notebook locally: [Explore NMA collection objects over time](https://glam-workbench.github.io/nma/)
  - Now, back to working with JN locally, why don't we download a notebook from here to test out?
  - The National Museum of Australia has all of their collection data available through an API, so there are a good few notebooks exploring this!
  - Download 'Explore places associated with collection objects'
  - Going to move it to my course folder and put it in tutorials
- Demo running it
  - How to locate files
    - cd into tutorials --> run command "jupyter notebook" and it will launch in your browser at localhost8888
  - How to modify
  - Where output goes
    - Output is saved in the same folder you're running the notebook in, which is why its best to contain your notebooks to a folder rather than running them from your home directory
- Push to git using command line!
- Open github
- Make it live on myBinder!
  - https://mybinder.org/

## Notes
- "To start working with the data from the ADS, you need to put together your toolkit. You're currently working inside something called a jupyter notebook, which will be a key part of your analysis toolkit. It's a place to keep notes, pictures, code and maps together. You can add tools and data into your jupyter notebook and then use them to ask questions and make maps and visualisations that help answer those questions." -[Opitz](https://github.com/ropitz/spatialarchaeology/blob/master/ADSDataExercise.ipynb)
