*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Perform login
    Click element  xpath=/html/body/header/div/nav/ul[2]/li/a
    Sleep  1s
    Input Text  id=name  ${USENAME}
#    Input Text  id=name  @{USENAME_PASSWORD_LOGGINED}[0]
    Input Password  id=password  ${PASSWORD}
    Sleep  1s
    Click Element  id=login-button

Verify login
     Element Should Contain  id=user-name  ${LOGGINED}
     Sleep  1s
