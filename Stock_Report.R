# Load packages
library(knitr)
library(markdown)
library(rvest)
library(XML)
library("reshape2")   # for transposing data with 'cast' and 'melt' functions
library("plyr")     # to do ply functions
library("openxlsx")
library(gridExtra)
library(lattice)
library(ggplot2)
library(scales)
library("pander")

# Set working directory
setwd("C:/Abhijay/Analytics use cases/Stock Returns/R code")

knit("Stock_Returns_Analysis.Rmd")
markdownToHTML('Stock_Returns_Analysis.md', 'Stock_Returns_Analysis.html', options=c("use_xhtml"))
system("pandoc -s Stock_Returns_Analysis.html -o Stock_Returns_Analysis.pdf")
file.remove("C:/Abhijay/Analytics use cases/Stock Returns/R code/Stock_Returns_Analysis.md")
#file.remove("C:/Abhijay/Analytics use cases/Stock Returns/R code/Stock_Returns_Analysis.html")
