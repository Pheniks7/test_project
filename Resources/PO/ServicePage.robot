*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
ServicePage.Load and Verify
    Click Element  xpath=/html/body/header/div/nav/ul[1]/li[3]/a
    Sleep  1s
    Click Link  Different elements
    Page Should Contain Button  Default Button
    Sleep  1s
    Select Checkbox  xpath=/html/body/div/div[2]/main/div[2]/div/div[2]/label[1]/input
    Sleep  1s
    Select Checkbox  css=body > div > div.uui-main-container.page-inside > main > div.main-content > div > div:nth-child(2) > label:nth-child(3) > input[type=checkbox]
    Sleep  1s
    #Select Radio Button  metal  Selen
    Click Element  css=body > div > div.uui-main-container.page-inside > main > div.main-content > div > div:nth-child(3) > label:nth-child(4) > input[type=radio]
    Sleep  1s
    Click Element  css=body > div > div.uui-main-container.page-inside > main > div.main-content > div > div.colors > select
    Sleep  1s
    Click Element  xpath=/html/body/div/div[2]/main/div[2]/div/div[4]/select/option[4]
    Sleep  1s
    #Textfield Should Contain    css=#mCSB_2_container > section:nth-child(1) > div.info-panel-body.info-panel-body-log > div > ul > li:nth-child(4)         '*Water: condition changed to true'
    Textarea Should Contain     css=#mCSB_2_container > section:nth-child(1) > div.info-panel-body.info-panel-body-log > div > ul > li:nth-child(4)         '*Water: condition changed to true'
    Sleep  1s

#ServicePage.Select buttons
#Search for Products
#    Enter Search Term
#    Submit Search
#
#
#        ServicePage.Load
#    ServicePage.Verify Service Loaded
#
#Verify Page Loaded
#    Wait Until Page Contains  Home Page
#