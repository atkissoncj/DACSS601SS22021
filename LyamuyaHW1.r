# LyamuyaHW1.r
# This file is an R script which is part of module 4 homework for DACSS 601
#
# Allie Lyamuya 7.14.2021


# =-=-=-=-=-=-=-=-=-=-=-=-
# front end material.
# =-=-=-=-=-=-=-=-=-=-=-=-

library(tidyverse)

# =-=-=-=--=-=-=-=-=-
# Importing data into R
hearingsData <- read.csv("congressional_hearings.csv")
# =-=-=-=--=-=-=-=-=-


# To get the first few rows of data
head(hearingsData)

# To gain some familiarity with the data
colnames(hearingsData)
dim(hearingsData)

# Should any of these columns have gather() or spread() applied to them to make
# them more useful? If so, perform those operations. If you want a challenge,
# try to use pivot_longer() or pivot_wider() instead.


# Do one operation that requires creating a new object and doing something to
# that object

#=-=-=-=-=-=-=-=-=-=-=
# creating a new object and make it to function
selectedHearingsData <- hearingsData %>%
  dplyr::rename("cisyear" = "CISYear", "filterHouse" = "filter_House",
                "filterSenate" = "filter_Senate", "filterJoint" = "filter_Joint",
                "cisCommittee" = "CISCommittee") %>%
  dplyr::select(id, source, cisyear, filterHouse, filterSenate, filterJoint,
                cisCommittee)

# Arrange the selectedHearingsData
arrangedHearingsData <- selectedHearingsData %>%
  arrange(desc(id))
#=-=-=-=-=-=-=-=-=-=-=


# One thing that has not yet been covered in the course
glimpse(hearingsData)




