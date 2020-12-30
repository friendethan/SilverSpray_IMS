# AgLDI Data Analysis Workflow

### Pre-Processing:

* Recalibration with flex Batch Processing using Internal_Silver_recalibration.FAMSMethod (realignment with silver ion adducts and cholesterol+Ag signal)

### Export Parameters:

* imzML:
  + m/z 100 – 1000 
  + No background removal, yes binning at 20,000 points
  + Export raw spectra from disk
* XML:
  + Rename all by their code names and trial (PA-1a, PA-2a, PA-3a)
  + Export all in one flexImaging file together (because S/N is fairly similar across)

### Data Processing:

* Using the function IMSPeakStats3
  +	Read all data
  + Split data by sampleROIs
    + Note: SampleROIs function only works with Cardinal v1, so you have to load R 3.4.4 (latest version) in order for this to work. 
  + TIC normalization
  + Remove spectra with SN < 10
  + Calculate stats (ANOVA, Tukey) after removing top and bottom 10%
  + Export data into csv for further analysis
