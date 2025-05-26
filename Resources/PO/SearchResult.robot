*** Settings ***
Library  SeleniumLibrary
Resource  ../Constants.robot

*** Keywords ***
Verify Search Completed
    Wait Until Page Contains    Результати пошуку

Verify Product Count
    [Arguments]  
    ${COUNT} =  Get Element Count  ${EXPECTED_PRODUCT_COUNT}  
    Should Be True  ${COUNT} == 60

Click Product link
     Click Link    ${SEARCH_RESULTS_PRODUCT_LINK}
