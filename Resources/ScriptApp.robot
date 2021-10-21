*** Settings ***
Resource  Resources/PO/LandingPage.robot
Resource  Resources/PO/Login.robot
Resource  Resources/PO/ServicePage.robot
Resource  Resources/PO/Assert.robot

*** Keywords ***
ScriptApp.Enter to Landing Page
    LandingPage.Load
    LandingPage.Verify Page Loaded

ScriptApp.Login Web site
    Login.Perform login
    login.Verify login

ScriptApp.Navigate to Service Page
    ServicePage.Load and Verify
    ServicePage.Select checkboxes and buttons

ScriptApp.Assert actions
    Assert.Confirm Checkbox status
    Assert.Confirm Radio button status
    Assert.Confirm Dropdown name status
