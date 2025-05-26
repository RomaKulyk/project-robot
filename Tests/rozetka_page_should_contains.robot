*** Settings ***
Documentation  This is some basic info about the whole suite
Resource    ../Resources/Common.robot
Resource    ../Resources/RozetkaApp.robot
Suite Setup    Insert Testing Data
Suite Teardown    Cleanup Testing Data
Test Setup  Begin Web Test
Test Teardown  End Web Test

# use the below line (without the # sign) to run the script
# robot -d results .\Tests\rozetka_page_should_contains.robot

*** Test Cases ***
Search results page should contains 60 products
    [Tags]  Current
    RozetkaApp.Search for Products
    RozetkaApp.Verify Results Page Contains Products