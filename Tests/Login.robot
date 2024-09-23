
*** Settings ***
Library           SeleniumLibrary
Library           String
Resource          ../PageObjects/Header.robot
Resource          ../PageObjects/LoginPage.robot
Resource          ../Resources/Testdata.robot

*** Keywords ***
Navigate to Login page
    Click link    ${LoginLink}
    Element text should be    ${LoginLabel_LoginPage}    ${LoginLabel_Text}

Login user
    [Arguments]    ${arg1}    ${arg2}
    Input text    ${EmailInputFieldLogin}    ${arg1}
    Input text    ${PasswordInputFieldLogin}    ${arg2}
    Click button    ${LoginButton}

Validate successful login
    Element text should be    ${SuccessfulLogin_MyAccount}    ${SuccessfulLogin_BtnText}

Validate missing email error
    Element Should Contain    ${EmptyEmail_ErrorLogin}    ${EmptyEmail_Text}

Validate invalid credentials error
    Element Should Contain    ${InvalidCredentials_ErrorLogin}    ${InvalidCredentials_ErrorText}
