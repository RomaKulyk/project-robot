*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${CART_PROCEED_TO_CHECKOUT} =  xpath=//rz-shopping-cart/div/div[1]/div/rz-checkout-button/a

*** Keywords ***
Verify Product Added
    Wait Until Page Contains   Оформити замовлення 
    Wait Until Page Contains   Продовжити покупки 

Proceed to Checkout    
    Click Link    ${CART_PROCEED_TO_CHECKOUT}
    