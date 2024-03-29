*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}       http://automationpractice.com
${BROWSER}   gc

*** Keywords ***
ClickSummerdress
    Click Element   xpath://*[@id="block_top_menu"]/ul/li[2]/a
    Click Element   xpath://*[@id="categories_block_left"]/div/ul/li[3]/a

ClickTShirts
    Click Element   xpath://*[@id="block_top_menu"]/ul/li[3]/a

Sorting
    Select From List By Value
    ...   id:selectProductSort  price:desc