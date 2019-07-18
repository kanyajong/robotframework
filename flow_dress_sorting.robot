*** Settings ***
Library    SeleniumLibrary
Resource   ./pages/welcome.robot
Resource   ./pages/catalog.robot

*** Variables ***
${URL}       http://automationpractice.com
${BROWSER}   gc

*** Test Cases ***
Sorting by price
    [tags]  auto
    เข้า web หน้าแรก
    เข้าไปยังหน้า Summer dress
    ทำการเลือก sort ด้วยราคาจากมากไปน้อย
    ผลการทำงานต้องแสดงข้อมูลที่เรียงจากราคามากไปน้อย
    ปิดหน้าจอ
# Sorting by price 2
#     [tags]  google
#     เข้า web หน้าแรก
#     ปิดหน้าจอ

*** Keywords ***
เข้า web หน้าแรก
    # Open Browser   ${URL}  browser=${BROWSER}
    welcome.Open
    Maximize Browser Window

เข้าไปยังหน้า Summer dress
    catalog.ClickSummerdress
    # Click Element  xpath://*[@id="block_top_menu"]/ul/li[2]/a
    # Click Element  xpath://*[@id="categories_block_left"]/div/ul/li[3]/a
    
ทำการเลือก sort ด้วยราคาจากมากไปน้อย
    catalog.Sorting
    # Select From List By Value
    # ...   id:selectProductSort  price:desc

ผลการทำงานต้องแสดงข้อมูลที่เรียงจากราคามากไปน้อย
    catalog.WaitUntil
    # Wait Until Element Contains  xpath://*[@id="center_column"]/ul/li[1]/div/div[2]/h5   Printed Summer Dress

ปิดหน้าจอ
    catalog.CloseBrowser
    # Close Browser   