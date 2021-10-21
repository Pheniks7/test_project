*** Settings ***
Library  SeleniumLibrary

*** Variables ***
@{USENAME_PASSWORD_LOGGINED}  Roman  Jdi1234  ROMAN IOVLEV
${ICON}  xpath:/html/body/header/div/nav/ul[2]/li/a


*** Keywords ***
Login and Verify
    [Arguments]  @{list}
    Click element  ${ICON}
    Input Text  id:name  ${list}[0]
    Input Password  id:password  ${list}[1]
    Click Element  id:login-button
    Element Should Contain  id=user-name  ${list}[2]
