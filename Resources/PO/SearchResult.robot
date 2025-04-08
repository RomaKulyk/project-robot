*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${SEARCH_RESULTS_PRODUCT_LINK} =  xpath=//li[5]/rz-catalog-tile/app-goods-tile-default/div/div[2]/div[1]/rz-button-product-page[1]/rz-indexed-link/a

*** Keywords ***
Verify Search Completed
    Wait Until Page Contains    Результати пошуку

Click Product link
     Click Link    ${SEARCH_RESULTS_PRODUCT_LINK}
     