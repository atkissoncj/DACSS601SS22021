# HomeworkOneTemplate.r
# This tells us what this file does
#
# Curtis Atkisson 7.9.2021

# Reminder: the # "comments" out a line of text; that is, if you precede a line with "#",
# then R ignores that line

# =-=-=-=-=-=-=-=-=-=-=-=-
# front end material.
# =-=-=-=-=-=-=-=-=-=-=-=-

library(tidyverse)

# =-=-=-=-=-=-=-=-=-=-=-=-
# Some quick code reminders
# =-=-=-=-=-=-=-=-=-=-=-=-

# Here's an example of storing an object.
hello <- paste("Hello World!")

# Look over there ->
# In the "Environment" window, you'll see that you've created an object that is
# now stored in your workspace.

# Now type hello. R "pastes" the line of text that says "Hello World!" as your output.

# Ok, with those reminders out of the way, let's get some data into R

# =-=-=-=-=-=-=-=-=-=-=-=-=-
# Reading in Data
# =-=-=-=-=-=-=-=-=-=-=-=-=-

# What you need to do from here on out is dependent on the dataset
# you choose to work with! Here's an example of how I'd approach this with
# a file using "+" as a delimiter

myData <- read.delim("plusDelimitedData.txt", sep = "+", header=T)

# let's unpack that a bit.
# I'm creating an object called myData
# I'm using the read.delim() function to read it in
# I'm specifying the name of the file; it's in my working directory!
# I'm specifying the delimiter (here, "+", but often commas (",") or tabs ("\t")
# I'm specifying that there is a header included in the data that features the variable names
# Don't forget to look at the data import samples code to get examples of other ways to import data.

# Now, let's check the first few rows. I'll let you remember how to do that!

# How many rows of data are there in this dataset?

# How many columns are there in the dataset?

# What are the column names?

# Should any of these columns have gather() or spread() applied to them to make them more
# useful? If so, perform those operations. If you want a challenge, try to use
# pivot_longer() or pivot_wider() instead.

# Do one operation that requires creating a new object and doing something to that object

# Do one thing to some portion of these data that hasn't been covered so far in the course materials. Be creative and have fun!
