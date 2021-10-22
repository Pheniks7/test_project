*** Settings ***
Library  SeleniumLibrary
Variables  ../WebElements.py


*** Variables ***
@{USENAME_PASSWORD_LOGGINED}  Roman  Jdi1234  ROMAN IOVLEV


*** Keywords ***
Login and Verify
    [Arguments]  @{list}
    Click element  ${LoginIcon}
    Input Text  id:name  ${list}[0]
    Input Password  id:password  ${list}[1]
    Click Element  id:login-button
    Element Should Contain  id=user-name  ${list}[2]
