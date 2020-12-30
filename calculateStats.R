##Step 1: Load packages into envrionment
require(dplyr)
require(ggplot2)
require(multcomp)

##Step 2: Read the data for analysis

#read data from Excel clipboard
data=read.delim("clipboard", sep="\t", header=TRUE)

#remove unwanted data & keep only relevant colummns
data_test=filter(data, Stats.=="Y")
test=group_by(data_test, Thickness)

##Step 3: Calculate statistics

#summarize stats
group_by(data_test, Thickness) %>%
  summarise(
    count = n(),
    mean = mean(CHO, na.rm = TRUE),
    sd = sd(CHO, na.rm = TRUE)
  )

#obtain ANOVA data
res.aov <- aov(CHO ~ Thickness, data = data_test)
summary(res.aov)
results=TukeyHSD(res.aov)

#remove outlier data
plot(res.aov, 1)
#check normality
plot(res.aov, 2)

#obtain summary
summary(glht(res.aov, linfct = mcp(Method = "Tukey")))

#export into csv
