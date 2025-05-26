*** Settings ***
Library  SeleniumLibrary
Resource  ../Constants.robot

*** Keywords ***
Search for Products
    Enter Search Term
    Submit Search

Enter Search Term
    Input Text    ${TOPNAV_SEARCH_BAR}    "${SEARCH_TERM}"
    
Submit Search
    Click Button    ${TOPNAV_SEARCH_BUTTON}

Click Main Page Logo
    Click Element    ${TOPNAV_MAIN_LOGO}