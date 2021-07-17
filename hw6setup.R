### Title: Homework 6 Setup
### Author: Sarah Jimenez
### Date: 20210712
### Output: Installation and setup steps

devtools::install_github('DACSS/blogbuilder')
install.packages('distill')
install.packages('postcards')

library(blogbuilder)
library(distill)
library(postcards)

blogbuilder::exclude_docs()
