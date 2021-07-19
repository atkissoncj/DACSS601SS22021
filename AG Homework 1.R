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

myData <- read.delim("congressional_hearings.csv", sep = ",", header=T)

# let's unpack that a bit.
# I'm creating an object called myData
# I'm using the read.delim() function to read it in
# I'm specifying the name of the file; it's in my working directory!
# I'm specifying the delimiter (here, "+", but often commas (",") or tabs ("\t")
# I'm specifying that there is a header included in the data that features the variable names
# Don't forget to look at the data import samples code to get examples of other ways to import data.

# Now, let's check the first few rows. I'll let you remember how to do that!
head(myData)
# How many rows of data are there in this dataset?
nrow(myData)
##100254
# How many columns are there in the dataset?
ncol(myData)
##36
# What are the column names?
colnames(myData)
##[1] "id"               "source"
##[3] "CISYear"          "Unpublished"
##[5] "Chamber"          "filter_House"
##[7] "filter_Senate"    "filter_Joint"
##[9] "CISCommittee"     "Sequence"
##[11] "Month"            "Congress"
##[13] "year"             "FiscalYear"
##[15] "Days"             "Sessions"
##[17] "Committee1"       "Subcommittee1"
##[19] "Committee2"       "Subcommittee2"
##[21] "filter_Referral"  "filter_Approp"
##[23] "filter_Agency"    "filter_Program"
##[25] "filter_Admin"     "filter_Lawmaking"
##[27] "title"            "description"
##[29] "pap_majortopic"   "pap_subtopic"
##[31] "Change."          "majortopic"
##[33] "subtopic"         "ReferralBills"
##[35] "StartDate"        "AdditionalDates"
# Should any of these columns have gather() or spread() applied to them to make them more
# useful? If so, perform those operations. If you want a challenge, try to use
# pivot_longer() or pivot_wider() instead.
##I would argue that the Chambers column could be created using gather() if it was not
##already there. Otherwise, no. Our gather() function could look like this:
tidymyData <- gather(myData, key = "Chamber", value = "ChamberNumber", 6:8)
# Do one operation that requires creating a new object and doing something to that object
class(myData$Sessions)
sessionMedian <- median(myData$Sessions, na.rm = TRUE)
print(sessionMedian)
##I made sure that the value I was working with was an integer and then
##calculated the median amount of sessions it took for a bill to be passed into law.
# Do one thing to some portion of these data that hasn't been covered so far in the course materials. Be creative and have fun!
class(myData$Chamber)
Mode <- function(x) {
  ux <- unique(x)
  ux[which.max(tabulate(match(x,ux)))]
}
Mode(myData$Chamber)
##Using stackoverflow, I found a function that can generate a mode, or the value
##that occurs the most. After using that on the column chamber, I found that most of these laws began in the House.
