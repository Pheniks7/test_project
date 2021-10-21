*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${SERVICE_MENU}  xpath:/html/body/header/div/nav/ul[1]/li[3]/a
${WATER_CHECKBOX}  xpath:/html/body/div/div[2]/main/div[2]/div/div[2]/label[1]/input
${EARTH_CHECKBOX}  xpath:/html/body/div/div[2]/main/div[2]/div/div[2]/label[2]/input
${WIND_CHECKBOX}  xpath:/html/body/div/div[2]/main/div[2]/div/div[2]/label[3]/input
${FIRE_CHECKBOX}  xpath:/html/body/div/div[2]/main/div[2]/div/div[2]/label[4]/input

${GOLD_RADIO}  xpath:/html/body/div/div[2]/main/div[2]/div/div[3]/label[1]
${SILVER_RADIO}  xpath:/html/body/div/div[2]/main/div[2]/div/div[3]/label[2]
${BRONZE_RADIO}  xpath:/html/body/div/div[2]/main/div[2]/div/div[3]/label[3]
${SELEN_RADIO}  xpath:/html/body/div/div[2]/main/div[2]/div/div[3]/label[4]

${COLOR_MENU}  xpath:/html/body/div/div[2]/main/div[2]/div/div[4]/select
${RED_SELECT}  xpath:/html/body/div/div[2]/main/div[2]/div/div[4]/select/option[1]
${GREEN_SELECT}  xpath:/html/body/div/div[2]/main/div[2]/div/div[4]/select/option[2]
${BLUE_SELECT}   xpath:/html/body/div/div[2]/main/div[2]/div/div[4]/select/option[3]
${YELLOW_SELECT}  xpath:/html/body/div/div[2]/main/div[2]/div/div[4]/select/option[4]

${WATER}  Water: condition changed to true
${EARTH}  Earth: condition changed to true
${WIND}  Wind: condition changed to true
${FIRE}  Fire: condition changed to true

${GOLD}  metal: value changed to  Gold
${SILVER}  metal: value changed to  Silver
${BRONZE}  metal: value changed to  Bronze
${SELEN}  metal: value changed to  Selen

${LOG_WINDOW}  xpath://*[@id="mCSB_2_container"]/section[1]/div[2]/div/ul
${RED}  Colors: value changed to Red
${GREEN}  Colors: value changed to Green
${BLUE}   Colors: value changed to Blue
${YELLOW}  Colors: value changed to Yellow


*** Keywords ***
Load and Verify
    Click Element  ${SERVICE_MENU}
    Click Link  Different elements
    Page Should Contain Button  Default Button

Select checkboxes and buttons
    Select Checkbox  ${WATER_CHECKBOX}
    Select Checkbox  ${WIND_CHECKBOX}
    Click Element  ${SELEN_RADIO}
    Click Element  ${COLOR_MENU}
    Click Element  ${YELLOW_SELECT}

Confirm Selection status
    Page Should Contain  ${WATER}
    Page Should Contain  ${WIND}
    Element Should Contain  ${LOG_WINDOW}  ${SELEN}
    Page Should Contain  ${YELLOW}
