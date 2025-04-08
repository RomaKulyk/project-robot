*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${SIGNIN_MAIN_HEADING} =  xpath=//rz-checkout-orders/rz-checkout-orders-content/div/h1


*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains Element    ${SIGNIN_MAIN_HEADING}
    Element Text Should Be   ${SIGNIN_MAIN_HEADING}    Оформлення замовлення
