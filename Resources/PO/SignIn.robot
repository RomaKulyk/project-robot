*** Settings ***
Library  SeleniumLibrary


*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains Element    xpath=//rz-checkout-orders-total/div/div/div/input