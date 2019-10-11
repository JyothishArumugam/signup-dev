library(shiny)
library(lubridate)
library(shinydashboard)
# #library(dplyr)
# library(readr)
# library(lazyeval)
# #library(ubeR)
# library(googleVis)
# #library(uberplot)
# library(reshape2)
# library(zoo)
# library(stringr)

## for gettig the working directory and proceeding further!
filePath <- getwd()

## reference to preprocess data file!
source(file.path(filePath, "preprocess.R"), local = TRUE)$value
source(file.path(filePath, "ui.R"), local = TRUE)$value
source(file.path(filePath, "server.R"), local = TRUE)$value

## for running the app !
shinyApp(ui = ui, server = server)
