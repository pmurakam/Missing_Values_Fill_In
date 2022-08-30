# Missing_Values_Fill_In
A function to fill in missing values

Description:  
Sometimes you have a vector of data with missing values and you want to fill in those missing values 
with the nearest non-missing value before or the nearest non-missing value after. This will do that.  
(NB: This was written with data preprocessing, *not* missing data imputation, in mind.)

Usage:
```
fill(x,direction="before")
```

Arguments:
```
x         - data vector (e.g., a column in a matrix)
direction - either "before" or "after". "before" tells the function to fill in missing values 
            with the nearest non-missing value before. "after" tells the function to fill in missing
            values with the nearest non-missing value after.
```

Example:
```
vec <- c(NA,NA,1,NA,NA,2,NA,3,NA)
fill(vec,"before")
fill(vec,"after")
```
