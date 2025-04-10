*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${CUSTOMERS_HEADER_LABEL} =  Our Happy Customers
${CUSTOMER_ADD_CUSTOMER_LINK} =  xpath=//*[@id="new-customer"]
${CUSTOMER_SUCCESS_LABEL} =  Success! New customer added.

*** Keywords ***
Vefify Page Loaded
    Wait Until Page Contains    ${CUSTOMERS_HEADER_LABEL}

Click Add Customer Link
    Click Link    ${CUSTOMER_ADD_CUSTOMER_LINK}

Verify Customer Added Successfully
    Wait Until Page Contains    ${CUSTOMER_SUCCESS_LABEL}