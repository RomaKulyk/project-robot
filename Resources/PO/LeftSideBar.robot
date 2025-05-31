*** Settings ***
Library  SeleniumLibrary
Resource     ../PO/TopNav.robot

*** Keywords ***
Click Product Category Links
    Log  ${PRODUCT_CATEGORY_LIST}
    FOR    ${element}    IN    @{PRODUCT_CATEGORY_LIST}
        Click Link  locator=${element}
        Sleep  0.5
        TopNav.Click Main Page Logo
        Sleep  0.5
    END  


Click Product Category Link
    [Arguments]    ${variable}
    Click Link  locator=${variable}


Verify Categories Count
    [Arguments]  
    ${COUNT} =  Get Length  ${PRODUCT_CATEGORY_LIST}  
    Should Be True  ${COUNT} == 18


Verify Category Links Exists
    FOR    ${element}    IN    @{PRODUCT_CATEGORY_LIST}
        ${element} =  Get WebElement  locator=${element}
        Log  Category link exists: ${element}
    END