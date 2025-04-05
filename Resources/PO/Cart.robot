*** Settings ***
Library  SeleniumLibrary


*** Keywords ***
Verify Product Added
    Wait Until Page Contains   Оформити замовлення 
    Wait Until Page Contains   Продовжити покупки 

Proceed to Checkout    
    Click Link    xpath=//rz-shopping-cart/div/div[1]/div/rz-checkout-button/a
    