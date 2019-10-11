output$ui_menuitems <- renderMenu({
  sidebarMenu(id = 'ui_menuitems',
              
              menuItem("FTRs", 
                       menuSubItem("FTRs", tabName = 'ftrs'),
                       menuSubItem("FTRs by City", tabName = 'ftrs_by_city'),
                       menuSubItem("FTRS by Channel", tabName = 'ftrs_by_channel')
              ),
              menuItem("Signup", 
                       menuSubItem("Signup & trip conversion", tabName = "signupMetrics_subMenu_onboarding_conversion"),
                       menuSubItem("Signups by signup form", tabName = 'signupMetrics_subMenu_signup_form'),
                       menuSubItem("Funnel", tabName = "signupMetrics_subMenu_helix_funnel"),
                       menuSubItem("Cost of acquisition", tabName = "cost_acq"),
                       menuSubItem("Mobile reclaimation", tabName = "signupMetrics_subMenu_reclaimation"),
                       menuSubItem("Conversion Counts", tabName = 'summaryAttempts')
              ),
              
              menuItem("Signin", 
                       menuSubItem('Signin metrics', tabName = 'signinMetrics_subMenu_signin_metrics'),
                       menuSubItem("App versions", tabName = "ftrsMetrics_tab_subMenu_app_version"),
                       menuSubItem("Welcome screen", tabName = "ftrsMetrics_tab_subMenu_welcome_screen")
              ),
              menuItem("Mobile Verification", tabName = 'mvMetrics_subMenu_mv'
              ),
              menuItem("Rider Retention", tabName = "engagementMetrics_tab_28dy"),
              menuItem("Flows", tabName='funnel_flows'),
              
           
              menuItem("Screen Error Rates",
                       menuSubItem("Phone Number", tabName = "error_phone_number_initial"),
                       menuSubItem("OTP", tabName = "error_otp"),
                       menuSubItem("Email", tabName = "error_email"),
                       menuSubItem("Password", tabName = "error_password"),
                       menuSubItem("Full Name", tabName = "error_full_name"),  
                       menuSubItem("Social", tabName = "error_social"),
                       menuSubItem("Social Confirm Info", tabName = "error_confirm_info")
              )

  )
})
              