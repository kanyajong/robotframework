*** Settings ***
Library    SeleniumLibrary
Resource   ./pages/welcome.robot
Resource   ./pages/catalog.robot
# Test Teardown   Close Browser
Suite Setup      เข้า web หน้าแรก
Suite Teardown   Close Browser
Test Teardown    welcome.Home

*** Variables ***
${URL}       http://automationpractice.com
${BROWSER}   gc

*** Test Cases ***
Sorting by price
    แสดงค่า
    # เข้า web หน้าแรก
    เข้าไปยังหน้า Summer dress
    # ทำการเลือก sort ด้วยราคาจากมากไปน้อย
Test
    # เข้า web หน้าแรก
    เข้าไปยังหน้า T-shirts

*** Keywords ***
เข้า web หน้าแรก
    welcome.Open

เข้าไปยังหน้า Summer dress
    catalog.ClickSummerdress

เข้าไปยังหน้า T-shirts
    catalog.ClickTShirts
    
ทำการเลือก sort ด้วยราคาจากมากไปน้อย
    catalog.Sorting