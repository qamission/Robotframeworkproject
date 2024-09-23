*** Settings ***
Library           SeleniumLibrary
Library           String
Resource          ../Keywords/Common.robot
Resource          ../PageObjects/Header.robot
Resource          ../Resources/Testdata.robot
Resource          ../Keywords/PLP.robot
Resource          ../Keywords/PDP.robot
Resource          ../Keywords/ShoppingCart.robot

*** Test Cases ***
TC_CART_003 Remove product from Cart by entering 0 in the quantity field
    [Setup]    Open app
    Navigate to Books category PLP
    Click on add to cart button for product    ${AddToCartBtnBookProduct3_PDP}
    Navigate to shopping cart
    Validate that product was added to shopping cart    ${LinkToAvailableProduct2PDP}    ${NameOfBookProduct3}
    Empty shopping cart by changing quantity to 0
    Validate that shopping cart is empty
    [Teardown]    Close Browser

TC_CART_005 Add and edit custom product in shopping cart
    [Setup]    Open app
    Navigate to Clothing Submenu PLP
    Navigate to Clothing Product PDP
    Input custom text and add clothing product to shopping cart    ${custom_text}[text1]
    Navigate to shopping cart
    Validate custom product was added to shopping cart    ${ProductAttribute_ShoppingCart}    ${custom_text}[text1]
    Edit custom text and add clothing product to shopping cart    ${custom_text}[text2]
    Navigate to shopping cart
    Validate custom product was added to shopping cart    ${ProductAttribute_ShoppingCart}    ${custom_text}[text2]
    [Teardown]    Close Browser