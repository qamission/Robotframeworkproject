*** Variables ***
${browser}        Firefox
${url}    https://demo.nopcommerce.com
${LoginLabel_Text}    Welcome, Please Sign In!
${SuccessfulLogin_BtnText}    My account
${EmptyEmail_Text}    Please enter your email
${InvalidCredentials_ErrorText}    Login was unsuccessful. Please correct the errors and try again.
&{login_valid_credentials}    email=janedoe@email.com    pass=123456
&{login_invalid_credentials}    email=johndoe@email.com    pass=123457
&{login_empty}    email=${EMPTY}    pass=${EMPTY}
${RegisterLabel_RegistrationText}    Register
${SuccessfulRegister_Text}    Your registration completed
${InvalidEmail_ErrorText}    Wrong email
${EmptyConfirmPassword_ErrorText}    Password is required.
${EmptyFirstName_ErrorText}    First name is required.
&{register_empty}    first-name=${EMPTY}    last-name=${EMPTY}    email=${EMPTY}    pass=${EMPTY}
&{register_first_names}    user1=Jane    user2=John    user3=Tim
&{register_last_names}    user1=Doe    user2=Smith    user3=Kim
&{register_companies}    company1=Sony    company2=Nokia    company3=Apple
${NoResult_ErrorText}    No products were found that matched your criteria.
${ShortKeyword_ErrorText}    Search term minimum length is 3 characters
&{search_non-existing_products}    product1=Huawei    product2=Xiaomi    product3=Motorola
&{search_short_keywords}    product1=HP    product2=PC
&{search_case-insensitive}    product1=ASUS N551JK-XO076H LAPTOP    product2=asus n551jk-xo076h laptop
&{advanced_search_data}    keyword=Laptop    category=Computers    manufacturer=HP
${UnavailableButtonForProduct_Text}    Add to cart
${OutOfStock_PLP_Text}    Out of stock
${PressKeysArgument}    ALT+ARROW_DOWN
&{sort_by_labels}    label1=Position    label2=Name: A to Z    label3=Name: Z to A    label4=Price: Low to High    label5=Price: High to Low    label6=Created on
&{display_products_labels}    label1=3    label2=6    label3=9
&{InputQuantityOfProduct}    quantity1=1    quantity2=2    quantity3=3
${NameOfAvailableProduct2}    First Prize Pies
${RegisteredUsersException_TextPDP}    Only registered users can write reviews
${RegisteredUserException_EmailFriend_TextPDP}    Only registered customers can use email a friend feature
&{email_friend}    friend=tomtop@twi.org    user=janedoe@email.com    message=I think you would like this.
${NameOfComputerProduct}    Build your own computer
&{build_pc_drop-down_labels}    processor=2.5 GHz Intel Pentium Dual-Core E2200 [+$15.00]    RAM=2 GB
&{input_fields_necklace}    start-date=5/1/2022    end-date=5/3/2022    quantity=2
${NameOfNecklaceProduct}    Elegant Gemstone Necklace (rental)
${NameOfBookProduct2}    First Prize Pies
${NameOfBookProduct3}    Pride and Prejudice
&{empty_shopping_cart}    quantity=0    message=Your Shopping Cart is empty!
&{custom_text}    text1=Mombasa    text2=Jimmy's
${EmptyFirstN_ErrorText_Checkout}    First name is required.
${EmptyLastN_ErrorText_Checkout}    Last name is required.
${EmptyEmail_ErrorText_Checkout}    Email is required.
${EmptyCountry_ErrorText_Checkout}    Country is required.
${EmptyCity_ErrorText_Checkout}    City is required
${EmptyStreet_ErrorText_Checkout}    Street address is required
${EmptyZip_ErrorText_Checkout}    Zip / postal code is required
${EmptyPhone_ErrorText_Checkout}    Phone is required
${CustomerInfoLabel_MyAccount}    My account - Customer info
${NoDownloadableProducts_ErrorText_MyAccount}    There are no downloadable products
${NoSubscriptions_ErrorText_MyAccount}    You are not currently subscribed to any Back In Stock notification lists
${NameOfCameraProduct}    Nikon D5500 DSLR - Red
${NameOfSoftwareProduct}    Windows 8 Pro
&{billing_address_checkout}    first-name=Ivan    last-name=Ivanov    email=ivanov.ivan@email.com    country=Russian Federation    city=Moscow    address1=Leninsky Ave 20    zip-code=101000    phone-number=787-0000
