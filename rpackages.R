# R packages to be installed
install.packages("devtools")
install.packages(c('shiny', 'rmarkdown', 'tidyverse'))
install.packages(c('sf', 'leaflet'))
install.packages(c('feather','kableExtra','plotly'))
install.packages(c('huxtable','flexdashboard','scales','RCurl'))
install.packages(c('haven'))

# qualtrics is not yet on cran
devtools::install_github("ropensci/qualtRics")
