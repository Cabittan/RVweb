*** Settings ***
Documentation       Template robot main suite.

Library             Collections
Library             MyLibrary
Library             RPA.Browser
Library             RPA.Excel.Files
Library             SeleniumLibrary
Test Teardown       Open Browser

***Variables***
${SERVER}           www.rvconnex.com
${BROWSER}          chrome
${DELAY}            1
${WELCOME URL}      https://www.rvconnex.com/en/home
${Contact us}       https://www.rvconnex.com/en/contact-us

***Keywords***
Open Browser To Welcome Page
    SeleniumLibrary.Open Browser        ${WELCOME URL}      ${BROWSER}
    SeleniumLibrary.Maximize Browser Window
    Welcome Page Should Be Open

Welcome Page Should Be Open
    SeleniumLibrary.Title Should Be     R V Connex

Contact Us Page Should Be Open
    SeleniumLibrary.Title Should Be     Contact Us | R V Connex

Click Tabs 
    [Arguments]     ${click}
    SeleniumLibrary.Click Element  ${click}

Scroll to Element
    [Arguments]     ${locator}
    SeleniumLibrary.Scroll Element Into View    ${locator}

Input Fullname
    [Arguments]     ${fullname}
    SeleniumLibrary.Input Text        name=fullname     ${fullname}

Input Telephone
    [Arguments]     ${telephone}
    SeleniumLibrary.input Text      name=telephone     ${telephone}

Input Email
    [Arguments]     ${email}
    SeleniumLibrary.input Text      name=email      ${email}

Input Subject
    [Arguments]     ${subject}
    SeleniumLibrary.input Text      name=subject    ${subject}

Input Message
    [Arguments]     ${message}
    SeleniumLibrary.input Text      id=message      ${message}

Click Checkbox
    [Arguments]     ${locator}
    SeleniumLibrary.Click Element   ${locator}

Checkbox Should Be Selected
    [Arguments]     ${locator}
    SeleniumLibrary.Checkbox Should Be Selected     ${locator}

Click Button
    [Arguments]     ${locator}
    SeleniumLibrary.Click Button    ${locator}

Close Browser
    SeleniumLibrary.Close Browser
