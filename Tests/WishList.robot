
*** Settings ***
Library           SeleniumLibrary
Library           String
Resource          ../PageObjects/Header.robot
Resource          ../PageObjects/Footer.robot
Resource          ../Keywords/Common.robot
Resource          ../Resources/Testdata.robot
Resource          ../Keywords/PLP.robot
Resource          ../Keywords/PDP.robot
Resource          ../Keywords/Wishlist.robot
Resource          ../Keywords/ShoppingCart.robot

*** Test Cases ***
TC_WISHLIST_003 Check Add products to Cart from wishlist page functionality is working correctly
    [Setup]    Open app
    Navigate to Books category PLP
    Click on add to wishlist button for available product    ${AddToWishlistBtnForAvailableProduct2}
    Navigate to Wishlist
    Move product from wishlist to shopping cart
    Validate book product was moved to shopping cart    ${LinkToAvailableProduct2PDP}    ${NameOfBookProduct2}
    [Teardown]    Close Browser

TC_WISHLIST_008 Access the wish list from the footer menu
    [Setup]    Open app
    Navigate to Wishlist from footer
    Validate wishlist opened
    [Teardown]    Close Browser

TC_WISHLIST_010 Access the added product details from the wish list by clicking the product name
    [Setup]    Open app
    Navigate to Books category PLP
    Click on add to wishlist button for available product    ${AddToWishlistBtnForAvailableProduct2}
    Navigate to Wishlist
    Validate available product was added to wishlist    ${LinkToAvailableProduct2PDP}    ${NameOfBookProduct2}
    Navigate to PDP from wishlist
    Validate PDP opened
    [Teardown]    Close Browser
