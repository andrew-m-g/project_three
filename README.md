# project_three

The aim for this project was to create a database for alcohol sales in Montgomery county Maryland.  

The data was pulled from Data.gov as an API and transformed into a pandas dataframe.  From there we dropped unnecessary columns and converted the elements in each column to the appropriate data types.  p3_presentation.pptx  outlines our process in more detail 

3rd Party Code sources:
  -Instructor (Alireza Samiee Daluie)
  -Edx Tutor
  -Chat GPT
  -Edx Xpert Learning Assistant

  project_three.ipynb
    requests data from api source
    converts into a pandas dataframe and drops extraneous meta data columns
    renames specified columns
    converts designated columns to appropriate data types
    reorganizes remaining columns
    creates new csv files containing data to be used in the sql data base
    exporting to csv file

  p3_db.sql
    -creates database tables and organizes data input from csv files

  project_three_future.ipynb (incomplete)
    accepts data from sqlalchemy queries and csv files
    process the data into pandas dataframes and uses the data to create visuals to identify trends, patterns and points of interest in alcohol sales

This information can be used by future and current business owners to make informed decisions on where to focus their resources based on the demand. Businessowners, along with Law Makers and a long list of others can find this database very useful for sevral different reasons.  As stated earlier this database can be useful to anyone who has any kind of interest in Alcohol sales in Montgimery County.
