*** Settings ***
Library  SeleniumLibrary
Resource  ../Constants.robot

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains   Іграшковий автомобіль Rastar Ferrari 458 Speciale A 1:24 (71900) 
Add to Cart
    Click Button    ${PRODUCT_TO_BUY}
    Sleep  3