*** Settings ***
Library  SeleniumLibrary


*** Keywords ***
Search for Products
    Input Text    xpath=//rz-search-suggest/form/div[1]/div/div/input    Ferrari 458
    Click Button  xpath=//rz-search-suggest/form/div[1]/button
