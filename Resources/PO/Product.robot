*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${PRODUCT_TO_BUY} =   xpath=//rz-product-buy-btn/rz-buy-button/button

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains  Машинка Rastar Ferrari 458 Speciale A 1:14 червоний (4540038)

Add to Cart
    Click Button    ${PRODUCT_TO_BUY}
    Sleep  3