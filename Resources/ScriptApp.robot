*** Settings ***
Resource  Resources/PO/LandingPage.robot
Resource  Resources/PO/Login.robot
Resource  Resources/PO/ServicePage.robot


*** Keywords ***
Enter to Landing Page
    LandingPage.Load
    LandingPage.Verify Page Loaded

Login Web site
    Login.Perform login
    login.Verify login

Service Page actions
    ServicePage.Load and Verify
    ServicePage.Select checkboxes and buttons
    ServicePage.Confirm Selection status
