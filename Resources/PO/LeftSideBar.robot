*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${SEARCH_RESULTS_PRODUCT_LINK} =  xpath=//li[7]/rz-catalog-tile/app-goods-tile-default/div/div[2]/div[1]/rz-button-product-page[1]/rz-indexed-link/a
${EXPECTED_PRODUCT_COUNT} =  xpath=//li[contains(@class, "catalog-grid__cell catalog-grid__cell_type_slim")]

*** Keywords ***
Verify Search Completed
    Wait Until Page Contains    Результати пошуку

Verify Product Count
    [Arguments]  
    ${COUNT} =  Get Element Count  ${EXPECTED_PRODUCT_COUNT}  
    Should Be True  ${COUNT} == 60

Click Product link
     Click Link    ${SEARCH_RESULTS_PRODUCT_LINK}