*** Settings ***
Library  SeleniumLibrary
Resource    ../Resources/PO/LandingPage.robot

*** Keywords ***
Search for Products
    LandingPage.Load
    LandingPage.Verify Page Loaded
    Input Text    xpath=//rz-search-suggest/form/div[1]/div/div/input    Ferrari 458
    Click Button  xpath=//rz-search-suggest/form/div[1]/button
    Wait Until Page Contains    Результати пошуку

Select Product from Search Results
    Click Link    xpath=//li[5]/rz-catalog-tile/app-goods-tile-default/div/div[2]/div[1]/rz-button-product-page[1]/rz-indexed-link/a
    Wait Until Page Contains  Машинка Rastar Ferrari 458 Speciale A 1:14 червоний (4540038)

Add Product to Cart
    Click Button    xpath=//rz-product-buy-btn/rz-buy-button/button
    Sleep  3
    Wait Until Page Contains   Оформити замовлення 
    Wait Until Page Contains   Продовжити покупки 
    
Begin Checkout
    Click Link    xpath=//rz-shopping-cart/div/div[1]/div/rz-checkout-button/a
    Wait Until Page Contains Element    xpath=//rz-checkout-orders-total/div/div/div/input

