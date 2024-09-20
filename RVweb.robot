*** Settings ***
Documentation       A test suite with a single test for web RVconnex
Resource            taskRV.robot

*** Test Cases ***
Verify Open Browser RVconnex
    Open Browser To Welcome Page
    Close Browser

Verify Click Tabs Contact Us
    Open Browser To Welcome Page
    Click Tabs      xpath://*[@id="mainMenu"]/div/ul/li[6]
    Contact Us Page Should Be Open
    Close Browser

Verify Correct Fullname Entry
    Open Browser To Welcome Page
    Click Tabs      xpath://*[@id="mainMenu"]/div/ul/li[6]
    Contact Us Page Should Be Open
    Scroll to Element   xpath://*[@id="contact-form"]/div[2]/div/div/div/form
    Input Fullname  King Arthor
    Close Browser

Verify Correct Telephone Entry
    Open Browser To Welcome Page
    Click Tabs      xpath://*[@id="mainMenu"]/div/ul/li[6]
    Contact Us Page Should Be Open
    Scroll to Element   xpath://*[@id="contact-form"]/div[2]/div/div/div/form
    Input Fullname  King Arthor
    Input Telephone  0854463699
    Close Browser

Verify Correct Email Entry
    Open Browser To Welcome Page
    Click Tabs      xpath://*[@id="mainMenu"]/div/ul/li[6]
    Contact Us Page Should Be Open
    Scroll to Element   xpath://*[@id="contact-form"]/div[2]/div/div/div/form
    Input Fullname  King Arthor
    Input Telephone  0854463699
    Input Email  test12@gmail.com
    Close Browser

Verify Correct Subject Entry
    Open Browser To Welcome Page
    Click Tabs      xpath://*[@id="mainMenu"]/div/ul/li[6]
    Contact Us Page Should Be Open
    Scroll to Element   xpath://*[@id="contact-form"]/div[2]/div/div/div/form
    Input Fullname      King Arthor
    Input Telephone     0854463699
    Input Email         test12@gmail.com
    Input Subject       Testweb Automate
    Close Browser

Verify Correct Message Entry
    Open Browser To Welcome Page
    Click Tabs          xpath://*[@id="mainMenu"]/div/ul/li[6]
    Contact Us Page Should Be Open
    Scroll to Element   xpath://*[@id="contact-form"]/div[2]/div/div/div/form
    Input Fullname      King Arthor
    Input Telephone     0854463699
    Input Email         test12@gmail.com
    Input Subject       Testweb Automate
    Input Message       Test01 Test02 Test03 ทดสอบ01 ทดสอบ02 ทดสอบ03
    Close Browser

Verify Click Checkbox "Privacy Policy"
    Open Browser To Welcome Page
    Click Tabs          xpath://*[@id="mainMenu"]/div/ul/li[6]
    Contact Us Page Should Be Open
    Scroll to Element   xpath://*[@id="contact-form"]/div[2]/div/div/div/form
    Input Fullname      King Arthor
    Input Telephone     0854463699
    Input Email         test12@gmail.com
    Input Subject       Testweb Automate
    Input Message       Test01 Test02 Test03 ทดสอบ01 ทดสอบ02 ทดสอบ03
    Click Checkbox      xpath=//label[@for='agree']
    Checkbox Should Be Selected     xpath://*[@id="agree"]
    Close Browser

Verify Click button "Submit"
    Open Browser To Welcome Page
    Click Tabs          xpath://*[@id="mainMenu"]/div/ul/li[6]
    Contact Us Page Should Be Open
    Scroll to Element   xpath://*[@id="contact-form"]/div[2]/div/div/div/form
    Input Fullname      King Arthor
    Input Telephone     0854463699
    Input Email         test12@gmail.com
    Input Subject       Testweb Automate
    Input Message       Test01 Test02 Test03 ทดสอบ01 ทดสอบ02 ทดสอบ03
    Click Checkbox      xpath=//label[@for='agree']
    Checkbox Should Be Selected     xpath://*[@id="agree"]
    Click Button  xpath://*[@id="contact-form"]/div[2]/div/div/div/form/div[7]/div/button
    Close Browser
