*** Settings ***
Library  SeleniumLibrary


*** Keywords ***
Search for Products
    Input Text    xpath=//rz-search-suggest/form/div[1]/div/div/input    "${SEARCH_TERM}"
    Click Button  xpath=//rz-search-suggest/form/div[1]/button
