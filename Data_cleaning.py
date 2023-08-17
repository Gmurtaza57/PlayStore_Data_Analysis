import pandas as pd
import warnings
warnings.filterwarnings("ignore")
#Task1
#Loading the data
def read_data_from_csv():
    #read the playstore_apps.csv dataset and return the data

    return df


#Task2: Keep Only Required columns,
def remove_unwanted_columns():
    #do not remove this line and do not change the function names
    df=read_data_from_csv()
    #remove the unwanted column and use inplace= True for dynamically updating the dataset
    # write your code here
    return df


#TASK3 : REMOVE DUPLICATES FROM THE DATASET
def remove_duplicates():
    # do not remove this line and do not change the function names
    df=remove_unwanted_columns()
    #write your code here

    return df


#TASK4: HANDLE NULL VALUES IN THE DATASET
def no_of_null_values():
    df= remove_duplicates()
    ##write your code here and return the null values
    return None


#TASK5: Replace the null values

def replace_null_values():
    df=remove_duplicates()

    # write your code here
    return df


#TASK6: check unique values of Category column and remove irrelevant category
def check_unique_values():
    df= replace_null_values()

    #write your code here
    return df



#TASK7: Check unique values of "Type" column,
def free_or_paid():
    df= check_unique_values()
    #write your code here
    return df




# Task 8: Remove apps with irrelevant names. starting with '?'
##export the cleaned dataset to new file as 'cleaned_apps_db.csv'
def irrleveant_names():
    df=check_unique_values()
     #write your code here

    df.to_csv('cleaned_apps_db.csv', index=False)
    return df


#Task9: Remove rows with nan values in the  Reviews dataset
#Read the playstore_reviews.csv file as df1 and return the same

def reviews_dataset():
    #write your code here

    return df1


#Task10: Remove identical rows from the dataset and upload the dataset to the database
#export the cleaned dataset to new file as 'cleaned_reviews_db.csv'
def remove_identical_rows():
    df1 = reviews_dataset()
    #write your code here
    df1.to_csv('cleaned_reviews_db.csv', index=False)
    return df1
