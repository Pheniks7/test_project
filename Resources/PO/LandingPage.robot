*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Keywords ***
Load
    Go To  ${URL}
    Sleep  1s

Verify Page Loaded
    Wait Until Page Contains  Home Page