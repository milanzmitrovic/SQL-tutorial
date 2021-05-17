# SQL Tutorial - data analyst side


### Where do we start?

- Some table already exist in database.
- We are accessing that table and performing some analysis.

### Selecting data

- Every table has columns and rows
- We can select specific columns that we are interested in. Others we can ignore for now.

select * \
 from table_name

select column_1, \
column_2, \
column_3 \
from table_name


### Filtering data

- Two notes:

     *** We are starting from tabular data and we are always ending at tabular data.

     *** It is not possible to arrive at data that is not of rectangular form. 


- ' where ' keyword is used for filtering data.
- It is telling what rows will be returned.
- It explains what condition row should match in order to be returned.

select column_1, \
column_2, \
column_3

from table_name

where column_1 = 'sth' \
and column_2 <> 'sth'
and (column_3 = 4 or column_4 = 2)

- In [where] condition, we can put column that is not present in [select] clause !!!


### Types of variables

- When we say variable, what do we mean?
    - Variable = one column of table

- Categorical VS Numerical

     - Categorical -> Nominal and Ordinal

     - Numerical -> Discrete and Continuous 



- Sometimes one variable can be both, categorical and continuous. It depends on context.
- The best way to think about variable type is to understand why this distinction is necessary!!! 
- We are interested in separating dataset into groups. What ever can be used to separate whole dataset into groups, it is categorical variable (of course, if it makes sense. Think about separating dataset based on continuous variable. It is possible, but does not make any sense.)
- 

### Grouping and aggregations == Split-Apply-Combine

-
-
-

### Having keyword

-
-
-


### Joining two datasets

- What is precondition for joining?
    - Column(s) used as a key should be present in both tables!!!
-
-

### Doing QA before joining datasets

- Is column(s) that is used as a key for joining unique?
    - In which table it should be unique?
        - It should be unique in table that is being joined.
        - In table to which it is being joined, it doesn't have to be unique.
- 

### Doing QA after joining datasets

- What does it mean join to be good?

- What are we interested to check?
    - dd
- Key column(s) exist, but in other column(s) that we are interested in are NULL values!!!
-


### Merging datasets and Union keyword

- Difference between merging and joining
-
-

###  Finding differences between two similar datasets

- In both datasets should be present columns used as a keys!!!
- Questions to be answeder:
    - Which rows are present in both datasets?
    - What is present in first dataset, but not in second?
    - What is present in second dataset, but not in first?


### WITH key word

-
-

### CTE - Common Table Expression

-
-


### Analytic functions

##### 3 types of analytic functions:
- Analytic aggregate functions
    - min, max, avg, sum, count
- Analytic navigation functions
     - first value, last value, lead, lag
- Analytic numbering functions
     - row number, rank





