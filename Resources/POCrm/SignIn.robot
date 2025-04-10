*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${SIGNIN_HEADER_LABEL} =  Login
${SIGNIN_EMAIL_TEXTBOX} =  xpath=//*[@id="email-id"]
${SIGNIN_PASSWORD_TEXTBOX} =  xpath=//*[@id="password"] 
${SIGNIN_SUBMIT_BUTTON} =  xpath=//*[@id="submit-id"]

*** Keywords ***
Vefify Page Loaded
    Wait Until Page Contains    ${SIGNIN_HEADER_LABEL}
    
Login With Valid Credentials
    [Arguments]    ${Email}    ${Password}
    Fill "Email" Field    ${Email}
    Fill "Password" Field    ${Password}
    Click "Submit" Button


Fill "Email" Field
    [Arguments]    ${Email}
    Input Text    ${SIGNIN_EMAIL_TEXTBOX}   ${Email}

Fill "Password" Field
    [Arguments]    ${Password}
    Input Text    ${SIGNIN_PASSWORD_TEXTBOX}    ${Password}

Click "Submit" Button
    Click Button    ${SIGNIN_SUBMIT_BUTTON}
    
    
