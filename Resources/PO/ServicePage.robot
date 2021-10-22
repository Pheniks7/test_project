*** Settings ***
Library  SeleniumLibrary
Variables  ../WebElements.py


*** Variables ***
#choose condition from following: Water, Water, Wind, Fire
#choose metal from following: Gold, Silver, Bronze, Selen
#choose color from following: Red, Green, Blue, Yellow
${CONDITION_1}  Water
${CONDITION_2}  Wind
${METAL}  Selen
${COLOR}  Yellow

#log text
${condition_log}  : condition changed to true
${metal_log}  metal: value changed to
${color_log}  Colors: value changed to

${label_1}  //label[text()[contains(.,'
${label_2}  ')]]//child::input
${option_1}  //option[text()[contains(.,'
${option_2}  ')]]

*** Keywords ***
Load and Verify
    Click Link  Service  #${ServiceMenu}
    Click Link  Different elements
    Page Should Contain Button  Default Button

Select checkboxes and buttons
    Select Checkbox  ${label_1}${CONDITION_1}${label_2}
    Select Checkbox  ${label_1}${CONDITION_2}${label_2}
    Click Element  ${label_1}${METAL}${label_2}
    Click Element  ${ColorMenu}
    Click Element  ${option_1}${COLOR}${option_2}

Confirm Selection status
    Page Should Contain  ${CONDITION_1}${condition_log}
    Page Should Contain  ${CONDITION_2}${condition_log}
    Page Should Contain  ${metal_log}  ${METAL}
    Page Should Contain  ${color_log} ${COLOR}
