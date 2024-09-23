*** Settings ***
Library    SeleniumLibrary
Resource    ../Keywords/RegistrationPage.robot
Resource          ../Keywords/Common.robot
Resource          ../PageObjects/Header.robot

#robot --test TC_REGISTER_002 Register new user with valid email Tests\Registration.robot
*** Test Cases ***
TC_REGISTER_002 Register new user with valid email
    [Setup]    Open app
    Navigate to Registration Page
    ${randomEmail}    Generate Random Email
    ${randomPassword}    Generate Random Password
    Register user    ${first_names}[user1]    ${register_last_names}[user1]    ${randomEmail}    ${register_companies}[company1]    ${randomPassword}    ${randomPassword}
    Validate successful register
    [Teardown]    Close Browser






