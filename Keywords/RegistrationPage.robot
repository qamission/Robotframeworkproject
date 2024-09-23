
*** Settings ***
Library           SeleniumLibrary
Library           String
Resource          ../PageObjects/Header.robot
Resource          ../PageObjects/Registration.robot
Resource          ../Resources/Testdata.robot

*** Keywords ***
Generate Random Email
    ${random2}    String.Generate Random String    8    [NUMBERS]
    ${randomEmail}    Catenate    user${random2}@email.com
    Set Global Variable    ${randomEmail}
    [RETURN]    ${randomEmail}

Generate Random Password
    ${randomPassword}    String.Generate Random String    15
    Set Global Variable    ${randomPassword}
    [RETURN]    ${randomPassword}

Generate Random Invalid Email
    ${random2}    String.Generate Random String    8    [NUMBERS]
    ${randomInvalidEmail}    Catenate    user${random2}&email.com
    Set Global Variable    ${randomInvalidEmail}
    [RETURN]    ${randomInvalidEmail}

Navigate to Registration Page
    Click link    ${RegisterLink}
    Element text should be    ${RegisterLabel_RegistrationPage}    ${RegisterLabel_RegistrationText}

Register user
    [Arguments]    ${first_name}    ${last_name}    ${email}    ${company}    ${pass}    ${confirm_pass}
    Click element    ${GenderFemaleRadioButton}
    Input text    ${FirstNameInputField}    ${first_name}
    Input text    ${LastNameInputField}    ${last_name}
    Select From List By Label    ${DayDOBDropDownMenu}    6
    Select From List By Value    ${MonthDOBDropDown}    6
    Select From List By Label    ${YearDOBDropDown}    1986
    Input text    ${EmailInputFieldRegister}    ${email}
    Input text    ${CompanyInputField}    ${company}
    Select checkbox    ${NewsletterCheckBox}
    Input text    ${PasswordInputFieldRegister}    ${pass}
    Input text    ${ConfirmPasswordInputField}    ${confirm_pass}
    Click button    ${RegisterButton}

Validate successful register
    Element text should be    ${SuccessfulRegister}    ${SuccessfulRegister_Text}

Validate invalid email error
    Element text should be    ${InvalidEmail_ErrorRegister}    ${InvalidEmail_ErrorText}

Validate empty confirm password error
    Element text should be    ${EmptyConfirmPassword_ErrorRegister}    ${EmptyConfirmPassword_ErrorText}

Validate empty first name error
    Element text should be    ${EmptyFirstName_ErrorRegister}    ${EmptyFirstName_ErrorText}
