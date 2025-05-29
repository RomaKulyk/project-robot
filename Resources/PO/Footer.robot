*** Settings ***
Library  SeleniumLibrary
Resource     ../PO/TopNav.robot

*** Keywords ***
Click Footer Tags Links
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

    
Click Footer Tags Link
    [Arguments]    ${variable}
    Click Link  locator=${variable}

Verify Footer Tags Links Count
    [Arguments]  
    ${COUNT} =  Get Length  ${FOOTER_CROSS_SITE_LINKS_LIST_1}  
    Should Be True  ${COUNT} == 12


# TO_DO_1: Add verification for the second list of footer links.

# TO_DO_2: Add verification that appropriate page is opened.
# The “Смартфони - ROZETKA | Купити смартфон в Києві та Україні” page is opened.