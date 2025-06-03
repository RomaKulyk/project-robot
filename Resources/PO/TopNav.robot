*** Settings ***
Library  SeleniumLibrary
Resource  ../Constants.robot

*** Keywords ***

Click Catalog Button
    Click Element    ${CATALOG_BUTTON}
    Sleep  1s
    Element Should Contain  ${CATALOG_DROPDOWN}   Популярні категорії 
    Capture Element Screenshot  ${CATALOG_DROPDOWN}


Click Main Page Logo
    Click Element    ${TOPNAV_MAIN_LOGO}


Enter Search Term
    Input Text    ${TOPNAV_SEARCH_BAR}    "${SEARCH_TERM}"
    

Get All List Items
    ${CAT_DROP_CAT_LINKS_LIST} =  Get WebElements  xpath=//ul[@class='list']/child::li
    ${count}    Get Length    ${CAT_DROP_CAT_LINKS_LIST}
    Log    Found ${count} elements in the list!

    FOR    ${element}    IN    @{CAT_DROP_CAT_LINKS_LIST}
        ${text}    Get Text    ${element}
        Log    List Item: ${text}
    END


Search for Products
    Enter Search Term
    Submit Search


Submit Search
    Click Button    ${TOPNAV_SEARCH_BUTTON}


Verify Catalog Button Exist
    Element Should Contain  ${CATALOG_BUTTON}  Каталог
    Capture Element Screenshot  ${CATALOG_BUTTON}


