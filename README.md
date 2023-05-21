# Marketing common data modelling challenge - Solution
This Repo containes the solution for the MCDM challenge. Task was to recreate the MCDM model to a set of raw data files that contains data advertising data of four different platforms. Here DBT cloud, Google BigQuery, and Google looker studio was used to complete the challenge.

## Solution
The challenge involved mapping the columns from the raw data files to the corresponding columns in the MCDM model to achieve the desired results. To accomplish this,DBT Cloud was utilized for data mapping and transformation. In the initial step, the data from the raw seed files was mapped into staging models. Dummy columns with default values were introduced in certain staging models to facilitate their merging into the final MCDM model. The final model was created by combining the staging models. The image below provides an overview of the process employed to transform the data from the raw data files into the final model.

<p align="center">
  <image src = https://github.com/vihan125/DBT_exersice/blob/main/solution_DAG.PNG width="80%" height="50%">
</p>
  
  You can access the Google looker report by following this link : https://lookerstudio.google.com/s/ha4Vh6Sq7dk




