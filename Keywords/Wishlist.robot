
*** Settings ***
Library           SeleniumLibrary
Library           String
Resource          ../PageObjects/Header.robot
Resource          ../PageObjects/PDP.robot
Resource          ../PageObjects/Wishlist.robot
Resource          ../PageObjects/Footer.robot

*** Keywords ***
Click on add to wishlist button for available product
    [Arguments]    ${wishlist_btn_available_product}
    Click button    ${wishlist_btn_available_product}

Navigate to Wishlist
    Click link    ${WishlistLink}
    Element Should Be Visible    ${WishlistLabel}

Validate available product was added to wishlist
    [Arguments]    ${link}    ${name}
    Element text should be    ${link}    ${name}

Move product from wishlist to shopping cart
    Select checkbox    ${AddToCartCheckboxInWishlist}
    Click button    ${AddToCartButtonInWishlist}

Navigate to Wishlist from footer
    Click link    ${WishlistLink_Footer}

Validate wishlist opened
    Element Should Be Visible    ${WishlistLabel}

Navigate to PDP from wishlist
    Click link    ${LinkToAvailableProduct2PDP}
