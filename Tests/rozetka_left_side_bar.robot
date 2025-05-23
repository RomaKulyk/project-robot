*** Settings ***
Documentation  This is some basic info about the whole suite
Resource    ../Resources/Common.robot
Resource    ../Resources/RozetkaApp.robot
Suite Setup    Insert Testing Data
Suite Teardown    Cleanup Testing Data
Test Setup  Begin Web Test
Test Teardown  End Web Test

# use the below line (without the # sign) to run the script
# robot -d results .\Tests\rozetka_left_side_bar.robot

*** Variables ***
${BROWSER}    chrome
${START_URL}    https://rozetka.com.ua
${SEARCH_TERM}    Ferrari 458

*** Test Cases ***
Left sidebar should contains 17 items
    [Tags]  Current
    LandingPage.Load
    LandingPage.Verify Page Loaded