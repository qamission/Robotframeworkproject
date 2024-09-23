
*** Variables ***
${GenderMaleRadioButton}    //input[@id='gender-male']
${GenderFemaleRadioButton}    //input[@id='gender-female']
${FirstNameInputField}    //input[@id='FirstName']
${LastNameInputField}    //input[@id='LastName']
${DayDOBDropDownMenu}    //select[@name='DateOfBirthDay']
${MonthDOBDropDown}     //select[@name='DateOfBirthMonth']
${YearDOBDropDown}    //select[@name='DateOfBirthYear']
${EmailInputFieldRegister}     //input[@id='Email']
${CompanyInputField}    //input[@id='Company']
${NewsletterCheckBox}    id:Newsletter
${PasswordInputFieldRegister}    //input[@id='Password']
${ConfirmPasswordInputField}    //input[@id='ConfirmPassword']
${RegisterButton}    //button[@id='register-button']
${RegisterLabel_RegistrationPage}    //h1[normalize-space()='Register']
${SuccessfulRegister}    //div[@class='result']
${InvalidEmail_ErrorRegister}     //span[@id='Email-error']
${EmptyConfirmPassword_ErrorRegister}    id:Confir]-yPassword-error
${EmptyFirstName_ErrorRegister}    id:FirstName-error
${wait1}    //*[@id="qquD4"]/div/div
