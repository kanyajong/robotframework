*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}       http://automationpractice.com
${BROWSER}   gc

*** Keywords ***
ClickSummerdress
    Click Element  xpath://*[@id="block_top_menu"]/ul/li[2]/a
    Click Element  xpath://*[@id="categories_block_left"]/div/ul/li[3]/a

Sorting
    Select From List By Value
    ...   id:selectProductSort  price:desc

WaitUntilElement
    Wait Until Element Contains  xpath://*[@id="center_column"]/ul/li[1]/div/div[2]/h5   Printed Summer Dress

CloseBrowser
    Close Browser