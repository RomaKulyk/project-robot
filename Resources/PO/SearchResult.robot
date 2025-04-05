*** Settings ***
Library  SeleniumLibrary


*** Keywords ***
Verify Search Completed
    Wait Until Page Contains    Результати пошуку

Click Product link
     Click Link    xpath=//li[5]/rz-catalog-tile/app-goods-tile-default/div/div[2]/div[1]/rz-button-product-page[1]/rz-indexed-link/a
     