*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}       http://automationpractice.com
${BROWSER}   gc

*** Keywords ***
Open
    Open Browser   ${URL}  browser=${BROWSER}