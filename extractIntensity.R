##Step 1: Set up the envrionment
#load required packages and codes
source("functions.R")
require(Cardinal)
require(XML)
require(Biobase)
require(MALDIquant)

##Step 2: Provide reference to dataset
#obtain imzml list
setwd("izml_directory")
#obtain list of imzml files
data_list=as.matrix(read.table("imzml.txt"))

#obtain xml list
setwd("xml_directory")
#read list of xml list
xml_list=as.matrix(read.table("xml.txt"))

#specify species list
#Ag3, Ag3O, AA, OA, CHO
species_list=c(322.714397, 338.709315, 
               389.1604, 391.1601, 
               411.1447, 413.1444, 
               493.259415, 495.259394)

##Step 3: Obtain and export stats

#create loop for reading and exporting stats
for (i in 1:length(data_list)){

  #import and subset data using Cardinal
  setwd("imzml_directory")
  data = readImzML(data_list[[i]])
  
  #separate data from samples
  setwd("xml_directory")
  data_split<-sampleROIs(data,XMLdata=xml_list[i])
  
  #visualize results
  par(mfrow=c(3,3), mai = c(0.4,0.4,0.4,0.4))
  image(data_split,mz=species_list[1], plusminus=0.2)
  
  #normalize data
  data_split_norm=normalize(data_split,method="tic")
  par(mfrow=c(3,3), mai = c(0.4,0.4,0.4,0.4))
  image(data_split_norm,mz=species_list[1], plusminus=0.1)
  
  #run stats function, which is based on MALDIquant
  stats=IMSPeakStats3(data_split_norm, species_list, window=5, output="Height",
                      SNR=10, fun=summary_quantile, ppm=250,
                      colnames=c("Group", "mean", "sd", "median", "# of pixels"))
  
  #export the data
  setwd("results_directory")
  name=paste("Stats_", data_list[[i]], "250ppm_5mz_TIC_SN10Quantile_Height", ".csv", sep="")
  write.csv(stats,file=name)
}

#remove unwanted items in RAM
gc()
rm(list = ls())
gc()
