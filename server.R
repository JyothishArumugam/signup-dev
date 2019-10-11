# 
# 
# 


server <- function(input, output, session) {
  ## for obtaining the working directory!
  filePath <- getwd()
  
  ## user defined function!
  render_page <- function(new_one) {
    page <- new_one()
    renderUI({
      fluidPage(page)
    })
  }
  
  ## passing the output of ui_body_init(Aggregated ui files in a single name) into the render_page(user_defined) functionality !
  output$ui_body <- render_page(new_one = ui_body_intialisation)
  
  ## defining the siderbar menu ! Actual code is in server_dashboard R file!
  output$ui_menuitems <- renderMenu({
    sidebarMenu(id = "ui_menuitems")
  })
  
  ## sourcing all the server part files !
  source(file.path(filePath,"server/Server_dashboard.R"),local=TRUE)$value
  source(file.path(filePath,"server/SERVER_FTRS_FTRs.R"),local=TRUE)$value
  source(file.path(filePath,"server/SERVER_FTRS_FTRs_by_City.R"),local=TRUE)$value
  source(file.path(filePath,"server/SERVER_FTRS_FTRs_by_Channel.R"),local=TRUE)$value
  source(file.path(filePath,"server/SERVER_SIGNUP_Signup_&_trip_conversion.R"),local=TRUE)$value
  source(file.path(filePath,"server/SERVER_SIGNUP_Signups_by_signup_form.R"),local=TRUE)$value
  source(file.path(filePath,"server/SERVER_SIGNUP_Funnel.R"),local=TRUE)$value
  source(file.path(filePath,"server/SERVER_SIGNUP_Cost_of_Acquisition.R"),local=TRUE)$value
  source(file.path(filePath,"server/SERVER_SIGNUP_Mobile_Reclaimation.R"),local=TRUE)$value
  source(file.path(filePath,"server/SERVER_SIGNUP_Conversion_Counts.R"),local=TRUE)$value
  source(file.path(filePath,"server/SERVER_SIGNIN_Signin_Metrics.R"),local=TRUE)$value
  source(file.path(filePath,"server/SERVER_SIGNIN_App_versions.R"),local=TRUE)$value
  source(file.path(filePath,"server/SERVER_SIGNIN_Welcome_Screen.R"),local=TRUE)$value
  source(file.path(filePath,"server/SERVER_MOBILE_VERIFICATION_MOBILE_VERIFICATION.R"),local=TRUE)$value
  source(file.path(filePath,"server/SERVER_RIDER_RETENTION_RIDER_RETENTION.R"),local=TRUE)$value
  source(file.path(filePath,"server/SERVER_FLOWS_FLOWS.R"),local=TRUE)$value
  source(file.path(filePath,"server/SERVER_SCREEN_ERROR_RATES_Phone_Number.R"),local=TRUE)$value
  source(file.path(filePath,"server/SERVER_SCREEN_ERROR_RATES_Otp.R"),local=TRUE)$value
  source(file.path(filePath,"server/SERVER_SCREEN ERROR RATES_Email.R"),local=TRUE)$value
  source(file.path(filePath,"server/SERVER_SCREEN ERROR RATES_Password.R"),local=TRUE)$value
  source(file.path(filePath,"server/SERVER_SCREEN ERROR RATES_Full_Name.R"),local=TRUE)$value
  source(file.path(filePath,"server/SERVER_SCREEN ERROR RATES_Social.R"),local=TRUE)$value
  source(file.path(filePath,"server/SERVER_SCREEN ERROR RATES_Social_Confirm_Info.R"),local=TRUE)$value

}



