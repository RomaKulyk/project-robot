*** Settings ***
Documentation  This is some basic info about the whole suite
Library  SeleniumLibrary
Library  Collections

# use the below line (without the # sign) to run the script
# robot -d results .\Tests\amazon.robot

*** Variables ***


*** Test Cases ***
User must sign in to check out
    [Documentation]  This is some basic info about the test
    [Tags]  sign-in
    # Initialize Selenium
    Set Selenium Speed    .2s
    Set Selenium Timeout    10s

    # Begin Web Test (common)
    Open Browser    about:blank  chrome
    Maximize Browser Window
    
    # Search for Products
    Go To  https://rozetka.com.ua/ua/
    Wait Until Page Contains  Rozetka
    Input Text    xpath=//rz-search-suggest/form/div[1]/div/div/input    Ferrari 458
    Click Button  xpath=//rz-search-suggest/form/div[1]/button
    Wait Until Page Contains    Результати пошуку

    # Select Product from Search Results
    Click Link    xpath=//li[5]/rz-catalog-tile/app-goods-tile-default/div/div[2]/div[1]/rz-button-product-page[1]/rz-indexed-link/a
    Wait Until Page Contains  Машинка Rastar Ferrari 458 Speciale A 1:14 червоний (4540038)
    
    # Add Product to Cart
    Click Button    xpath=//rz-product-buy-btn/rz-buy-button/button
    Sleep  3
    Wait Until Page Contains   Оформити замовлення 
    Wait Until Page Contains   Продовжити покупки 
    
    # Begin Checkout
    Click Link    xpath=//rz-shopping-cart/div/div[1]/div/rz-checkout-button/a
    Wait Until Page Contains Element    xpath=//rz-checkout-orders-total/div/div/div/input
    
    # End Web Test (common)
    Close Browser

*** Keywords ***
