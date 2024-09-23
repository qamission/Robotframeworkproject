*** Settings ***
Library    SeleniumLibrary


*** Keywords ***
Open app
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Set Selenium Speed    4s

