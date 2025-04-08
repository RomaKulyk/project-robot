*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${TOPNAV_SEARCH_BAR} =  xpath=//rz-search-suggest/form/div[1]/div/div/input
${TOPNAV_SEARCH_BUTTON} =  xpath=//rz-search-suggest/form/div[1]/button

*** Keywords ***
Search for Products
    Enter Search Term
    Submit Search

Enter Search Term
    Input Text    ${TOPNAV_SEARCH_BAR}    "${SEARCH_TERM}"
    
Submit Search
    Click Button    ${TOPNAV_SEARCH_BUTTON}
