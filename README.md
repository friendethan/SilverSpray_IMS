# Analysis of Total Cholesterol Intensity with Imaging Mass Spectrometry 
This is an archive for the R codes used in the data analysis pipeline in the publication listed below to calculate the total cholesterol intensity from imaging mass spectometry data of mouse brain homogenates following silver nitrate spray

## Files

* workflow.md contains the data analysis workflow and other necessary parameters
* extractIntensity.R contains the script for exporting the mean intensity for each sample at various thicknesses
* calculateStats.R contains the script for calculating ANOVA and comparing thicknesses
* functions.R contains the functions written by Ethan Yang and called during the script

## Reference Publication
**Yang E**, Fournelle F, Chaurand P. Silver spray deposition for AgLDI imaging MS of cholesterol and other olefins on thin tissue sections. *J Mass Spectrom. 2020 Apr;55(4):e4428*. [doi:10.1002/jms.4428](https://pubmed.ncbi.nlm.nih.gov/31410898/). Epub 2019 Aug 30. PMID: 31410898.

## Contributors 

* Ethan Yang: Wrote 100% of the R codes for exporting and analyzing the IMS data for the mouse brain homogenates in the publication
* Frédéric Fournelle: Helped with exporting figures and obtaining some of the data for the publication
* Pierre Chaurand: Provided guidance and outlined the data analysis pipeline; corrected figures 

## Dependencies

* [Cardinal](https://github.com/kuwisdelu/Cardinal) for reading MALDI imaging data
* [MALDIquant](https://github.com/sgibb/MALDIquant) and [MALDIquantForeign](https://github.com/sgibb/MALDIquantForeign) for obtaining peak intensities and peak picking
* [Tidyverse](https://github.com/tidyverse) for data wrangling and summarizing after peak picking

## Disclaimer
This repository contains only the scripts and functions for analyzing the entire imaging mass spectrometry data included in the publication. However, the session info provided below were determined post publication and therefore may not be an accurate representation of the actual R enviornment during data analysis. The scripts provided have been scrapped to remove any personal identifying information.

## License
Please reference the LICENSE document for details. 

## Session Info
**RStudio: Version 1.3.959**

**R version: 3.4.4**  
R version 3.4.4 (2018-03-15)  
Platform: x86_64-w64-mingw32/x64 (64-bit)  
Running under: Windows 10 x64 (build 18363)  

Attached base packages:

* parallel  
* stats
* graphics
* grDevices utils
* datasets
* methods
* base     

Other attached packages:
* MALDIquant_1.17     
* XML_3.98-1.10
* Cardinal_1.2.1
* ProtGenerics_1.10.0
* Biobase_2.38.0
* BiocGenerics_0.24.0

loaded via a namespace (and not attached):

* Rcpp_0.12.16
* MASS_7.3-49
* lattice_0.20-35
* R6_2.2.2
* rlang_0.2.0
* tools_3.4.4
* grid_3.4.4
* irlba_2.3.2
* yaml_2.1.19 
* mmand_1.5.3    
* Matrix_1.2-12
* signal_0.7-6
* sp_1.2-7
* compiler_3.4.4 
* stats4_3.4.4 

**R version: 3.6.0**  
R version 3.6.0 (2019-04-26)  
Platform: x86_64-w64-mingw32/x64 (64-bit)  
Running under: Windows 10 x64 (build 18363)  

attached base packages:

* stats4
* parallel
* stats
* graphics
* grDevices utils
* datasets
* methods
* base     

other attached packages:
* forcats_0.5.0
* stringr_1.4.0
* dplyr_0.8.5
* purrr_0.3.4
* readr_1.3.1
* tidyr_0.8.3
* tibble_3.0.1 
* ggplot2_3.3.0      
* tidyverse_1.2.1
* MALDIquant_1.19.3
* Biobase_2.44.0
* XML_3.99-0.3
* Cardinal_2.2.5
* ProtGenerics_1.16.0
* S4Vectors_0.22.1
* EBImage_4.26.0     
* BiocParallel_1.18.1
* BiocGenerics_0.30.0

loaded via a namespace (and not attached):
* httr_1.4.1               
* jsonlite_1.6.1           
* viridisLite_0.3.0        
* modelr_0.1.4             
* assertthat_0.2.1         
* sp_1.3-1                
* tiff_0.1-5               
* cellranger_1.1.0         
* yaml_2.2.0               
* pillar_1.4.4             
* backports_1.1.6          
* lattice_0.20-38         
* glue_1.4.0               
* digest_0.6.25            
* rvest_0.3.4              
* colorspace_1.4-1         
* MALDIquantForeign_0.12   
* htmltools_0.4.0         
* Matrix_1.2-17            
* pkgconfig_2.0.3          
* broom_0.5.6              
* biglm_0.9-1              
* haven_2.2.0              
* fftwtools_0.9-8         
* scales_1.1.0             
* jpeg_0.1-8.1             
* generics_0.0.2           
* ellipsis_0.3.0           
* withr_2.2.0              
* cli_2.0.2               
* magrittr_1.5             
* crayon_1.3.4             
* readxl_1.3.1             
* mclust_5.4.3             
* fansi_0.4.1              
* nlme_3.1-139            
* MASS_7.3-51.4            
* xml2_1.2.0               
* tools_3.6.0              
* hms_0.5.3                
* lifecycle_0.2.0          
* munsell_0.5.0           
* locfit_1.5-9.1
* irlba_2.3.3              
* compiler_3.6.0           
* signal_0.7-6             
* rlang_0.4.6              
* grid_3.6.0              
* RCurl_1.95-4.12
* rstudioapi_0.11          
* htmlwidgets_1.5.1        
* bitops_1.0-6             
* base64enc_0.1-3          
* gtable_0.3.0            
* abind_1.4-5
* DBI_1.1.0                
* mmand_1.6.1              
* R6_2.4.1                 
* lubridate_1.7.4          
* stringi_1.4.3           
* matter_1.10.0            
* readMzXmlData_2.8.1      
* Rcpp_1.0.4.6             
* vctrs_0.2.4              
* readBrukerFlexData_1.8.5 
* png_0.1-7
* tidyselect_0.2.5   
