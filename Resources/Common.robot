*** Settings ***
Library  SeleniumLibrary


*** Keywords ***
Begin Web Test
    Open Browser    about:blank  ${BROWSER}
    Maximize Browser Window

# Initialize Selenium
    # Set Selenium Speed    .2s
    # Set Selenium Timeout    10s

End Web Test
    Close Browser

Insert Testing Data
    Custom Keyword 1
    Custom Keyword 2

Cleanup Testing Data
    Log    I am cleaning up the test data...

Custom Keyword 1
    Log    Doing keyword 1...

Custom Keyword 2
    Log    Doing keyword 2...