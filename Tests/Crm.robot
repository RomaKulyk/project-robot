*** Settings ***
Documentation    This is some basic infor about the whole sutite.
Library          SeleniumLibrary

# Run the script
# robot -d results .\Tests\crm.robot   

*** Variables ***


*** Test Cases ***
Should be able to add a new castomer
    [Documentation]    This is some basic info about the test
    [Tags]             1006    Smoke    Contacts
    # Initialize Selenium
    Set Selenium Speed    .2s
    Set Selenium Timeout    10s
    
    # Open the browser and navigate to the page
    Log                Starting the test case!
    Open Browser       https://automationplayground.com/crm    chrome

    # Resize browser window for recording
    # Set Window Position    x=341    y=169
    Set Window Size    1920    1080

    Page Should Contain    Customers Are Priority One!

    Click Link    xpath=//*[@id="SignIn"]
    Page Should Contain    Login

    Input Text    locator=//*[@id="email-id"]   text=admin@robotframeworktutorial.com
    Input Text    locator=//*[@id="password"]    text=qwe
    Click Button    xpath=//*[@id="submit-id"]
    Page Should Contain    Our Happy Customers
    Click Link    xpath=//*[@id="new-customer"]
    Page Should Contain    Add Customer
    
    Input Text    locator=//*[@id="EmailAddress"]   text=janedoe@gmail.com
    Input Text    locator=//*[@id="FirstName"]  text=Jane
    Input Text    locator=//*[@id="LastName"]  text=Doe
    Input Text    locator=//*[@id="City"]   text=Dallas

    Select From List By Value    //*[@id="StateOrRegion"]    TX
    Select Radio Button    gender    female
    Select Checkbox    name=promos-name
    Click Button    Submit
    Wait Until Page Contains    Success! New customer added.
    
    Sleep              3s
    Close Browser    

*** Keywords ***


