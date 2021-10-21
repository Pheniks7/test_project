*** Settings ***
Documentation  Perform some actions at the test site
Resource  ../Resources/Common.robot  # necessary for Setup & Teardown
Resource  ../Resources/ScriptApp.robot  # necessary for lower level keywords in test cases
Test Setup  Begin Web Test
Test Teardown  End Web Test

# python -m robot -d results tests/Script.robot

*** Variables ***
${BROWSER} =  chrome
${URL} =  https://jdi-testing.github.io/jdi-light/index.html


*** Test Cases ***
User must sign in and select some elements
    [Documentation]  Perform some actions at the test site
    [Tags]  Exercise 1
    ScriptApp.Enter to Landing Page
    ScriptApp.Login Web site
    ScriptApp.Service Page actions