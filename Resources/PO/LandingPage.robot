*** Settings ***
Library  SeleniumLibrary


*** Keywords ***
Load and Verify
    Go To  ${URL}
    Wait Until Page Contains  Home Page
