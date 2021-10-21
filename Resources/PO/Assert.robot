*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Confirm Checkbox status
    Element Should Contain  css=#mCSB_2_container > section:nth-child(1) > div.info-panel-body.info-panel-body-log > div > ul > li:nth-child(4)   ${WATER}
    Element Should Contain  css=#mCSB_2_container > section:nth-child(1) > div.info-panel-body.info-panel-body-log > div > ul > li:nth-child(3)   ${WIND}

Confirm Radio button status
    Element Should Contain  css=#mCSB_2_container > section:nth-child(1) > div.info-panel-body.info-panel-body-log > div > ul > li:nth-child(2)   ${SELEN}

Confirm Dropdown name status
    Element Should Contain  css=#mCSB_2_container > section:nth-child(1) > div.info-panel-body.info-panel-body-log > div > ul > li:nth-child(1)   ${YELLOW}
