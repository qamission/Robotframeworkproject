
*** Settings ***
Library           SeleniumLibrary
Library           String
Resource          ../Keywords/Common.robot
Resource          ../PageObjects/Header.robot
Resource          ../Resources/Testdata.robot
Resource          ../PageObjects/PLP.robot
Resource          ../PageObjects/PDP.robot

*** Keywords ***
Navigate to camera product PDP
    [Arguments]    ${camera_product}    ${label}
    Click link    ${camera_product}
    Element Should Be Visible    ${label}

Click on add review link for camera product
    [Arguments]    ${review_camera}
    Click link    ${review_camera}

Validate review can't be added without login
    Element text should be    ${RegisteredUsersException_ErrorPDP}    ${RegisteredUsersException_TextPDP}

Navigate to book product PDP
    [Arguments]    ${book_product}    ${label}
    Click link    ${book_product}
    Element Should Be Visible    ${label}

Click on email friend button
    Click button    ${EmailFriendBtn}
    Element Should Be Visible    ${EmailFriend_Label}

Share product
    [Arguments]    ${friend}    ${user}    ${message}
    Input text    ${FriendEmailInputField_PDP}    ${friend}
    Input text    ${UserEmailInputField_PDP}    ${user}
    Input text    ${MessageInputField_PDP}    ${message}
    Click button    ${SendEmailBtn_PDP}

Validate product can't be shared without login
    Element text should be    ${RegisteredUsersException_ErrorPDP}    ${RegisteredUserException_EmailFriend_TextPDP}

Navigate to Computer Product PDP
    Click link    ${ComputerProduct_PDP}
    Element Should Be Visible    ${ComputerProductLabel_PDP}

Build your own PC with all selected choices
    [Arguments]    ${processor}    ${RAM}    ${HDDvalue}    ${OSvalue}
    Select from list by label    ${ProcessorDropDown_BuildComputer_PDP}    ${processor}
    Select from list by label    ${RAMDropDown_BuildComputer_PDP}    ${RAM}
    Select Radio Button    ${HDDRadioBtn_name_PDP}    ${HDDvalue}
    Select Radio Button    ${OSRadioBtn_name_PDP}    ${OSvalue}
    Select Checkbox    ${MSOfficeCheckbox_PDP}
    Select Checkbox    ${AcroReaderCheckbox_PDP}
    Select Checkbox    ${TotalCommCheckbox_PDP}
    Wait Until Element Is Visible    ${AddToCartBtnComputerProduct_PDP}
    Click button    ${AddToCartBtnComputerProduct_PDP}

Navigate to Necklace Product PDP
    Click link    ${NecklaceProduct_PDP}
    Element Should Be Visible    ${NecklaceProductLabel_PDP}

Input fields with valid data to rent necklace product
    [Arguments]    ${start_date}    ${end_date}    ${quantity}
    Input text    ${StartDateInputField_NecklacePDP}    ${start_date}
    Input text    ${EndDateInputField_NecklacePDP}    ${end_date}
    Clear Element Text    ${QuantityInputField_NecklacePDP}
    Input text    ${QuantityInputField_NecklacePDP}    ${quantity}
    Wait Until Element Is Visible    ${RentBtn_NecklacePDP}
    Click button    ${RentBtn_NecklacePDP}

Validate PDP opened
    Element Should Be Visible    ${BookProduct2Label_PDP}

Navigate to Clothing Product PDP
    Click link    ${ClothingProduct_PDP}
    Element Should Be Visible    ${ClothingProductLabel_PDP}

Input custom text and add clothing product to shopping cart
    [Arguments]    ${custom}
    Input text    ${TextInputField_CustomTShirt_PDP}    ${custom}
    Click button    ${AddToCartBtnClothingProduct_PDP}

Edit custom text and add clothing product to shopping cart
    [Arguments]    ${custom}
    Click link    ${EditProductLink_ShoppingCart}
    Clear Element Text    ${TextInputField_CustomTShirt_PDP}
    Input text    ${TextInputField_CustomTShirt_PDP}    ${custom}
    Click button    ${AddToCartBtnClothingProduct_PDP}
