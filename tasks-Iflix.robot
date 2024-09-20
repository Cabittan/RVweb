*** Settings ***
Documentation       Template robot main suite.

Library             Collections
Library             MyLibrary
Library             RPA.Browser
Library             RPA.Excel.Files
Library             SeleniumLibrary
Test Teardown       Open Browser

***Variables***

${SERVER}           www.iflix.com/th
${BROWSER}          chrome
${DELAY}            1
${WELCOME URL}      https://www.iflix.com/th
${MOVIE}            https://www.iflix.com/th/play/bmaahnst1lk5wdt-มหาศึกล้างพิภพ%20(พากย์ไทย)/q4100493jw3-EP1%3A%20มหาศึกล้างพิภพ%20(พากย์ไทย)
${OPEN}             options=add_experimental_option("detach",True)

***Keywords***
Open Browser To Welcome Page
   
    SeleniumLibrary.Open Browser    ${WELCOME URL}     ${BROWSER}      
    SeleniumLibrary.Maximize Browser Window
    SeleniumLibrary.Set Selenium Speed  ${DELAY}
    Welcome Page Should Be Open
    
Welcome Page Should Be Open
    SeleniumLibrary.Title Should Be     iflix แพลตฟอร์มคอนเทนต์ออนไลน์ถูกลิขสิทธิ์ คุณภาพระดับHD | ซีรีส์จีน,ซีรีส์เกาหลี,การ์ตูน,อื่นๆ

Movie Page Should Be Open
    SeleniumLibrary.Title Should Be     EP1: มหาศึกล้างพิภพ (พากย์ไทย) - ชมวิดีโอออนไลน์ คุณภาพระดับHD - iflix 

Click Movie Swallowed Star
    SeleniumLibrary.Click Element     xpath://*[@id="app"]/div[1]/div/div/main/div/div[1]/div[1]/a
    SeleniumLibrary.Switch Window   url=https://www.iflix.com/th/play/bmaahnst1lk5wdt-%E0%B8%A1%E0%B8%AB%E0%B8%B2%E0%B8%A8%E0%B8%B6%E0%B8%81%E0%B8%A5%E0%B9%89%E0%B8%B2%E0%B8%87%E0%B8%9E%E0%B8%B4%E0%B8%A0%E0%B8%9E%20(%E0%B8%9E%E0%B8%B2%E0%B8%81%E0%B8%A2%E0%B9%8C%E0%B9%84%E0%B8%97%E0%B8%A2)/q4100493jw3-EP1%3A%20%E0%B8%A1%E0%B8%AB%E0%B8%B2%E0%B8%A8%E0%B8%B6%E0%B8%81%E0%B8%A5%E0%B9%89%E0%B8%B2%E0%B8%87%E0%B8%9E%E0%B8%B4%E0%B8%A0%E0%B8%9E%20(%E0%B8%9E%E0%B8%B2%E0%B8%81%E0%B8%A2%E0%B9%8C%E0%B9%84%E0%B8%97%E0%B8%A2)
    Movie Page Should Be Open

Go To Welcome Page
    SeleniumLibrary.Go To   ${WELCOME URL}
    Welcome Page Should Be Open

Search Movie
    [Arguments]     ${search}
    SeleniumLibrary.Input Text     xpath://*[@id="app"]/header/div/div[2]/div[1]/form/input   ${search}
    SeleniumLibrary.Click Button    xpath://*[@id="app"]/header/div/div[2]/div[1]/form/button
    SeleniumLibrary.Switch Window   url=https://www.iflix.com/th/search?q=Swallowed+Star
