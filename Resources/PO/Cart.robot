*** Settings ***
Library  SeleniumLibrary
Resource  ../Constants.robot

*** Keywords ***
Verify Product Added
    Wait Until Page Contains   Оформити замовлення 
    Wait Until Page Contains   Продовжити покупки 

Proceed to Checkout    
    Click Link    ${CART_PROCEED_TO_CHECKOUT}
    