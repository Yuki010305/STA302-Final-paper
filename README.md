# What factors and how influence Zillow Housing Sale Price?


## Overview


This repository hosts the project "What factors and how influence Zillow Housing Sale Price?", which investigates how factors such as number of bathrooms, number of bedrooms, square feet, year built, tax value, etc. affect Zillow Housing Sale Price and the significance of their impact. This study used Zillow's open data to analyze 90,275 (89,499 after data processing) home sales information to explore the relationship between home characteristics and home sales prices. The study aims to use the characteristics of each home to estimate the value of the property.  

Throughout the project, the insights gained from the data can help Zillow and homebuyers get a preliminary understanding of the value of the home, which is of great reference significance for reaching the final price, and can help buyers and sellers reach a transaction with a more generally recognized value. Additionally, this research work utilizes advanced statistical techniques (multiple linear regression, including log transformation) to predict and explain home values.


## File Structure

The repo is structured as:

-   `data/raw_data` this directory stores the original data and data dictionary.
-   `data/analysis_data` this directory stores cleaned and processed data.
-   `model` this directory stores the full model, the log transformed model and the model after removing outliers.
-   `other` this directory stores various components used for project creation, such as sketches, LLM, datasheets, etc.
-   `paper` this directory contains the files used to generate the paper, including the Quarto document and reference bibliography file, as well as the PDF of the paper. 
-   `scripts` this directory contains the R scripts used to simulate, download and clean data.


## Statement on LLM usage

In the creation of this project, OpenAI's ChatGPT was used to enhance the paragraphs, as well as assist in generating the plots. You can check the other/llm/chat_with_chatGPT.txt for a complete conversation of my usage of ChatGPT in this project.

