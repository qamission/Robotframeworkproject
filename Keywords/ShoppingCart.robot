*** Settings ***
Library    SeleniumLibrary
Library    String
Resource    ../PageObjects/Header.robot
Resource    ../Resources/Testdata.robot
Resource          ../PageObjects/Checkout.robot
Resource    ../PageObjects/ShoppingCart.robot


*** Keywords ***
Navigate to shopping cart
    Wait Until Element Is Visible    ${ShoppingCartLink}
    Click link    ${ShoppingCartLink}
    Element Should Be Visible    ${ShoppingCartLabel}

Validate that product was added to shopping cart
    [Arguments]    ${link}    ${name}
    Wait Until Element Is Visible    ${link}
    Element text should be    ${link}    ${name}

Click on add to cart button for product
    [Arguments]    ${add_to_cart_btn_product}
    Click button    ${add_to_cart_btn_product}

Empty shopping cart by changing quantity to 0
    Clear Element Text    ${QuantityInputField_ShoppingCart}
    Input text    ${QuantityInputField_ShoppingCart}    ${empty_shopping_cart}[quantity]
    Click button    ${UpdateCartBtn_ShoppingCart}


Validate that shopping cart is empty
    Element text should be    ${EmptyMessage}    ${empty_shopping_cart}[message]

Navigate to Checkout as guest page
    Select checkbox    ${TermsOfServiceCheckBox_ShoppingCart}
    Click button    ${CheckoutBtn_ShoppingCart}
    Wait Until Element Is Visible    ${CheckoutAsGuestBtn}
    Click button    ${CheckoutAsGuestBtn}

Validate book product was moved to shopping cart
    [Arguments]    ${link}    ${name}
    Element Should Be Visible    ${ShoppingCartLabel}
    Element text should be    ${link}    ${name}

Validate rented product with correct quantity is added to shopping cart
    [Arguments]    ${quantity}
    Element text should be    ${LinkToPDPFromShoppingCart}    ${NameOfNecklaceProduct}
    Textfield Value Should Be    ${QuantityInputField_ShoppingCart}    ${quantity}

Navigate to shopping cart (when element is not visible)
    Execute Javascript    window.scrollTo(0,0)
    Wait Until Element Is Visible    ${ShoppingCartLink}
    Click link    ${ShoppingCartLink}
    Element Should Be Visible    ${ShoppingCartLabel}

Validate camera product with correct quantity is added to shopping cart
    [Arguments]    ${quantity}
    Element text should be    ${LinkToPDPFromShoppingCart}    ${NameOfCameraProduct}
    Textfield Value Should Be    ${QuantityInputField_ShoppingCart}    ${quantity}
