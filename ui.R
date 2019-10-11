
ui_body_intialisation <- function(){
  tags$div(
    source(file.path(filePath,"ui/UI_FTRS_FTRs.R"),local=TRUE)$value,
    source(file.path(filePath,"ui/UI_FTRS_FTRs_by_City.R"),local=TRUE)$value,
    source(file.path(filePath,"ui/UI_FTRS_FTRs_by_Channel.R"),local=TRUE)$value,
    source(file.path(filePath,"ui/UI_SIGNUP_Signup_&_trip_conversion.R"),local=TRUE)$value,
    source(file.path(filePath,"ui/UI_SIGNUP_Signups_by_signup_form.R"),local=TRUE)$value,
    source(file.path(filePath,"ui/UI_SIGNUP_Funnel.R"),local=TRUE)$value,
    source(file.path(filePath,"ui/UI_SIGNUP_Cost_of_Acquisition.R"),local=TRUE)$value,
    source(file.path(filePath,"ui/UI_SIGNUP_Mobile_Reclaimation.R"),local=TRUE)$value,
    source(file.path(filePath,"ui/UI_SIGNUP_Conversion_Counts.R"),local=TRUE)$value,
    source(file.path(filePath,"ui/UI_SIGNIN_Signin_Metrics.R"),local=TRUE)$value,
    source(file.path(filePath,"ui/UI_SIGNIN_App_versions.R"),local=TRUE)$value,
    source(file.path(filePath,"ui/UI_SIGNIN_Welcome_Screen.R"),local=TRUE)$value,
    source(file.path(filePath,"ui/UI_MOBILE_VERIFICATION_MOBILE_VERIFICATION.R"),local=TRUE)$value,
    source(file.path(filePath,"ui/UI_RIDER_RETENTION_RIDER_RETENTION.R"),local=TRUE)$value,
    source(file.path(filePath,"ui/UI_FLOWS_FLOWS.R"),local=TRUE)$value,
    source(file.path(filePath,"ui/UI_SCREEN_ERROR_RATES_Phone_Number.R"),local=TRUE)$value,
    source(file.path(filePath,"ui/UI_SCREEN_ERROR_RATES_Otp.R"),local=TRUE)$value,
    source(file.path(filePath,"ui/UI_SCREEN ERROR RATES_Email.R"),local=TRUE)$value,
    source(file.path(filePath,"ui/UI_SCREEN ERROR RATES_Password.R"),local=TRUE)$value,
    source(file.path(filePath,"ui/UI_SCREEN ERROR RATES_Full_Name.R"),local=TRUE)$value,
    source(file.path(filePath,"ui/UI_SCREEN ERROR RATES_Social.R"),local=TRUE)$value,
    source(file.path(filePath,"ui/UI_SCREEN ERROR RATES_Social_Confirm_Info.R"),local=TRUE)$value,
    class="uiContent"
      )
  
}

##ui  representation object
ui <- dashboardPage(skin="green",
                    dashboardHeader(title = "rider fx",titleWidth = 200),
                    dashboardSidebar(sidebarMenuOutput(outputId = "ui_menuitems")),
                    dashboardBody(uiOutput("ui_body")))