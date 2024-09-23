*** Variables ***

${EmailInputFieldLogin}    //input[@id='Email']
${PasswordInputFieldLogin}    //input[@id='Password']
${RememberMeCheckbox}    //label[normalize-space()='Remember me?']
${LostPasswordLink}    //a[normalize-space()='Forgot password?']
${LoginButton}    //button[@class="button-1 login-button"]
${RegisterButtonOnLoginPage}    //button[@class="button-1 register-button"]
${LoginLabel_LoginPage}    //div[@class="page-title"]
${SuccessfulLogin_MyAccount}    //a[@class='ico-account']
${EmptyEmail_ErrorLogin}    //span[@id='Email-error']
${InvalidCredentials_ErrorLogin}    //div[@class='message-error validation-summary-errors']