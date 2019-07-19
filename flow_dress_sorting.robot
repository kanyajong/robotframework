*** Settings ***
Library    SeleniumLibrary
Resource   ./pages/welcome.robot
Resource   ./pages/catalog.robot

*** Variables ***
${URL}       http://automationpractice.com
${BROWSER}   gc

*** Test Cases ***
Sorting by price
    เข้า web หน้าแรก
    เข้าไปยังหน้า Summer dress
    ทำการเลือก sort ด้วยราคาจากมากไปน้อย
    # ปิดหน้าจอ

*** Keywords ***
เข้า web หน้าแรก
    welcome.Open
    # Maximize Browser Window

เข้าไปยังหน้า Summer dress
    catalog.ClickSummerdress
    
ทำการเลือก sort ด้วยราคาจากมากไปน้อย
    catalog.Sorting

# ปิดหน้าจอ
#     catalog.CloseBrowser