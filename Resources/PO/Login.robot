*** Settings ***
Library  SeleniumLibrary

*** Variables ***
@{USENAME_PASSWORD_LOGGINED} =  Roman  Jdi1234  ROMAN IOVLEV
${ICON} =  xpath=/html/body/header/div/nav/ul[2]/li/a


*** Keywords ***
Perform login
    Click element  ${ICON}
    Input Text  id:name  ${USENAME_PASSWORD_LOGGINED}[0]
    Input Password  id:password  ${USENAME_PASSWORD_LOGGINED}[1]
    Click Element  id:login-button

Verify login
     Element Should Contain  id=user-name  ${USENAME_PASSWORD_LOGGINED}[2]
