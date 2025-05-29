*** Settings ***
Library  SeleniumLibrary
Resource     ../PO/TopNav.robot

*** Keywords ***
Click Footer Cross Site Links
    Log  ${FOOTER_CROSS_SITE_LINKS_LIST_1}
    Execute Javascript  document.querySelector(".app-footer").scrollIntoView(true);
    Sleep  1

    FOR    ${element}    IN    @{FOOTER_CROSS_SITE_LINKS_LIST_1}
        
        Sleep  1
        Click Link  locator=${element}
        Log  ${element}
        Sleep  1
        TopNav.Click Main Page Logo
        Sleep  1
        Execute Javascript  document.querySelector(".app-footer").scrollIntoView(true);
    END  

    
Click Footer Cross Site Link
    [Arguments]    ${variable}
    Click Link  locator=${variable}

Verify Footer Cross Site Count
    [Arguments]  
    ${COUNT} =  Get Length  ${FOOTER_CROSS_SITE_LINKS_LIST_1}  
    Should Be True  ${COUNT} == 12