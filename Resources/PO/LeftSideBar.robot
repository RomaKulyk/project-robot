*** Settings ***
Library  SeleniumLibrary
Resource     ../PO/TopNav.robot
Resource     ../Constants.robot

*** Keywords ***
Click Product Category Links
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