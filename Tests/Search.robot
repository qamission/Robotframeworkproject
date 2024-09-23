
*** Settings ***
Library           SeleniumLibrary
Library           String
Resource          ../PageObjects/Header.robot
Resource          ../Resources/Testdata.robot
Resource          ../PageObjects/SearchPage.robot

*** Keywords ***
Basic search
    [Arguments]    ${arg1}
    Input Text    ${SearchBar}    ${arg1}
    Click button    ${SearchButton}

Advanced search
    [Arguments]    ${arg1}    ${arg2}
    Click element    ${AdvanceSearchCheckBox}
    Select From List By Label    ${CategoryDropDownMenu}    ${arg1}
    Click element    ${SearchSubCategoriesCheckbox}
    Select From List By Label    ${ManufacturerDropDownMenu}    ${arg2}
    Click element    ${ProductDescriptionsCheckbox}
    Click button    ${SearchBtnAdvanceSearch}

Validate no result error
    Element text should be    ${NoResult_ErrorSearch}    ${NoResult_ErrorText}

Validate short keyword error
    Element text should be    ${ShortKeyword_ErrorSearch}    ${ShortKeyword_ErrorText}

Validate case insensitive product
    Element Should Be Visible    ${CaseInsensitive_ProductLinkEg}

Validate successful advanced search product
    Element Should Be Visible    ${AdvancedSearch_ProductLinkEg}
