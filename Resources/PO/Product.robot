*** Settings ***
Library  SeleniumLibrary


*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains  Машинка Rastar Ferrari 458 Speciale A 1:14 червоний (4540038)

Add to Cart
    Click Button    xpath=//rz-product-buy-btn/rz-buy-button/button
    Sleep  3