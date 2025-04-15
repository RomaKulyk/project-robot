*** Settings ***
Library    SeleniumLibrary



*** Variables ***

*** Keywords ***
Begin Web Test

    # Set Selenium Speed    .2s
    ${START_TIME} =   Get time
    # Log To Console    ${START_TIME}
    Set Selenium Timeout    10s
    Open Browser       about:blank    ${BROWSER}
    Maximize Browser Window
    
End Web Test
    Close All Browsers
    ${END_TIME} =  Get time
    # Log To Console    ${END_TIME}