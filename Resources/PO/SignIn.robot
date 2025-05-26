*** Settings ***
Library  SeleniumLibrary
Resource  ../Constants.robot

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains Element    ${SIGNIN_MAIN_HEADING}
    Element Text Should Be   ${SIGNIN_MAIN_HEADING}    Оформлення замовлення
