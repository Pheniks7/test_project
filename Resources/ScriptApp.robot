*** Settings ***
Resource  Resources/PO/LandingPage.robot
Resource  Resources/PO/Login.robot
Resource  Resources/PO/ServicePage.robot


*** Keywords ***
Enter to Landing Page
    LandingPage.Load and Verify

Login Web site
    Login.Login and Verify  @{USENAME_PASSWORD_LOGGINED}

Service Page actions
    ServicePage.Load and Verify
    ServicePage.Select checkboxes and buttons
    ServicePage.Confirm Selection status
