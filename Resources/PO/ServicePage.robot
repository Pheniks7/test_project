*** Settings ***
Library  SeleniumLibrary
Variables  ../WebElements.py


*** Variables ***
${WATER}  Water: condition changed to true
${EARTH}  Earth: condition changed to true
${WIND}  Wind: condition changed to true
${FIRE}  Fire: condition changed to true

${GOLD}  metal: value changed to  Gold
${SILVER}  metal: value changed to  Silver
${BRONZE}  metal: value changed to  Bronze
${SELEN}  Selen

${RED}  Colors: value changed to Red
${GREEN}  Colors: value changed to Green
${BLUE}   Colors: value changed to Blue
${YELLOW}  Colors: value changed to Yellow


*** Keywords ***
Load and Verify
    Click Link  Service  #${ServiceMenu}
    Click Link  Different elements
    Page Should Contain Button  Default Button

Select checkboxes and buttons
    Select Checkbox  ${WaterCheckbox}
    Select Checkbox  ${WindCheckbox}
    Click Element  ${SilverRadio}
    Click Element  ${ColorMenu}
    Click Element  ${YellowSelect}

Confirm Selection status
    Page Should Contain  ${WATER}
    Page Should Contain  ${WIND}
    Page Should Contain  ${SELEN}
    Page Should Contain  ${YELLOW}
