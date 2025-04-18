*** Settings ***
Documentation    This is some basic info about the whole sutite.
Resource    ../Resources/CrmCommon.robot
Resource    ../Resources/CrmApp.robot
Test Setup    Begin Web Test
Test Teardown    End Web Test
# Run the script
# robot -d results .\Tests\crm.robot
# browser can be change from terminal using BROWSER variable
# robot -d results -v BROWSER:edge .\Tests\crm.robot 

*** Variables ***
${BROWSER} =  chrome
${URL} =  https://automationplayground.com/crm 
${VALID_LOGIN_EMAIL} =  admin@robotframeworktutorial.com
${VALID_LOGIN_PASSWORD} =  Password!

*** Test Cases ***
Home page should load
    [Documentation]    Test the home page
    [Tags]             1001    Smoke    Home
    CrmApp.Go to "Home" Page

Should be able to login with valid credentials
    [Documentation]    Test the login
    [Tags]             1002    Smoke    Login
    CrmApp.Go to "Home" Page
    CrmApp.Login With Valid Credentials    ${VALID_LOGIN_EMAIL}    ${VALID_LOGIN_PASSWORD}
    
Should be able to log out
    [Documentation]    Test the log out
    [Tags]             1004    Smoke    Login
    CrmApp.Go to "Home" Page
    CrmApp.Login With Valid Credentials    ${VALID_LOGIN_EMAIL}    ${VALID_LOGIN_PASSWORD}
    CrmApp.Sign Out

Should be able to add a new castomer
    [Documentation]    This is some basic info about the test
    [Tags]             1006    Smoke    Contacts
    CrmApp.Go to "Home" Page
    CrmApp.Login With Valid Credentials    ${VALID_LOGIN_EMAIL}    ${VALID_LOGIN_PASSWORD}
    CrmApp.Add New Customer
    CrmApp.Sign Out