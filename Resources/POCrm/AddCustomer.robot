*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${ADDCUSTOMER_HEADER_LABEL} =  Add Customer
${ADDCUSTOMER_SUBMIT_BUTTON} =  Submit
${ADDCUSTOMER_EMAIL_TEXTBOX} =  xpath=//*[@id="EmailAddress"]
${ADDCUSTOMER_FIRST_NAME_TEXTBOX} =  xpath=//*[@id="FirstName"]
${ADDCUSTOMER_LAST_NAME_TEXTBOX} =  xpath=//*[@id="LastName"]
${ADDCUSTOMER_CITY_TEXTBOX} =  xpath=//*[@id="City"]
${ADDCUSTOMER_STATE_DROPDOWN} =  //*[@id="StateOrRegion"]
${ADDCUSTOMER_GENDER_RADIO} =  gender
${ADDCUSTOMER_PROMO_ CHECKBOX} =  name=promos-name

*** Keywords ***
Vefify Page Loaded
    Wait Until Page Contains    ${ADDCUSTOMER_HEADER_LABEL}

Add New Customer
    Fill Customer Fields
    Click Submit Button
    
Fill Customer Fields
    Input Text    ${ADDCUSTOMER_EMAIL_TEXTBOX}       text=janedoe@gmail.com
    Input Text    ${ADDCUSTOMER_FIRST_NAME_TEXTBOX}  text=Jane
    Input Text    ${ADDCUSTOMER_LAST_NAME_TEXTBOX}  text=Doe
    Input Text    ${ADDCUSTOMER_CITY_TEXTBOX}        text=Dallas

    Select From List By Value    ${ADDCUSTOMER_STATE_DROPDOWN}      TX
    Select Radio Button    ${ADDCUSTOMER_GENDER_RADIO}        female
    Select Checkbox    ${ADDCUSTOMER_PROMO_ CHECKBOX}

Click Submit Button
    Click Button    ${ADDCUSTOMER_SUBMIT_BUTTON}