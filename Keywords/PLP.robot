*** Settings ***
Library           SeleniumLibrary
Library           String
Resource          ../Keywords/Common.robot
Resource          ../PageObjects/Header.robot
Resource          ../Resources/Testdata.robot
Resource          ../PageObjects/PLP.robot
Resource          ../PageObjects/PDP.robot

*** Keywords ***
Navigate to Notebooks Submenu PLP
    Click link    ${ComputersMenuLink}
    Element Should Be Visible    ${ComputersLabel_PLP}
    Click link    ${NotebooksItemBoxLink}
    Element Should Be Visible    ${NotebooksLabel_PLP}

Sort and display products
    [Arguments]    ${sort}    ${display}
    Select From List By Label    ${DropDownSortProducts}    ${sort}    ${sort_by_labels}[label5]
    Select From List By Label    ${DropDownDisplayProducts}    ${display}    ${display_products_labels}[label1]
    Click element    ${DisplayAsListIcon}
    Sleep    2

Count products
    ${counter}    Get Element Count    ${CountProductsOnPLP}
    #For
    FOR    ${i}    IN RANGE    0    ${counter}
        Log    ${i}
        Sleep    1
    END

Click on next page of PLP
    Click Element    ${NextPageNavigator}
    Sleep    2

Navigate ro Camera & Photo Submenu PLP
    Click link    ${ElectronicsMenuLink}
    Element Should Be Visible    ${ElectronicsLabel_PLP}
    Click link    ${CameraPhotoItemBoxLink}
    Element Should Be Visible    ${CameraPhotoLabel_PLP}

Navigate to Available Product PDP
    Click button    ${AddToCartBtnForAvailableProduct1}

Input Quantity of Product
    [Arguments]    ${quantity}
    Wait Until Element Is Visible    ${InputQuantityProduct1Red}
    Clear Element Text    ${InputQuantityProduct1Red}
    Input text    ${InputQuantityProduct1Red}    ${quantity}
    ${quantity_text_PDP}    Get Text    ${InputQuantityProduct1Red}
    Comment    ${quantity_text_PDP}    Remove String    ${quantity_text_PDP}
    Comment    ${quantity_input_PDP}    Convert To Number    ${quantity_text_PDP}
    Log    ${quantity_text_PDP}

Validate that unavailable product can't be ordered
    Element Should Not Contain    ${UnavailableButtonForProduct}    ${UnavailableButtonForProduct_Text}
    Click link    ${UnavailableProductLink}
    Element text should be    ${OutOfStock_PLP}    ${OutOfStock_PLP_Text}

Navigate to add to card btn and click
    Press Keys    ${AddToCartBtnProduct1Red}    ${PressKeysArgument}

Navigate to Books category PLP
    Click link    ${BooksMenuLink}
    Element Should Be Visible    ${BooksLabel_PLP}

Navigate to Desktops Submenu PLP
    Click link    ${ComputersMenuLink}
    Element Should Be Visible    ${ComputersLabel_PLP}
    Click link    ${DesktopsSubMenuLinkSidebar}
    Element Should Be Visible    ${DesktopsLabel_PLP}

Navigate to Jewelry PLP
    Click link    ${JewelryMenuLink}
    Element Should Be Visible    ${JewelryLabel_PLP}

Navigate to Clothing Submenu PLP
    Click link    ${ApparelMenuLink}
    Element Should Be Visible    ${ApparelLabel_PLP}
    Click link    ${ClothingItemBoxLink}
    Element Should Be Visible    ${ClothingLabel_PLP}

Navigate to Software Submenu PLP
    Click link    ${ComputersMenuLink}
    Element Should Be Visible    ${ComputersLabel_PLP}
    Click link    ${SoftwareItemBoxLink}
    Element Should Be Visible    ${SoftwareLabel_PLP}