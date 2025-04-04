*** Settings ***
Documentation  This is some basic info about the whole suite
Resource    ../Resources/Common.robot
Resource    ../Resources/Rozetka.robot
Suite Setup    Insert Testing Data
Suite Teardown    Cleanup Testing Data
Test Setup  Begin Web Test
Test Teardown  End Web Test

# use the below line (without the # sign) to run the script
# robot -d results .\Tests\rozetka.robot

*** Variables ***


*** Test Cases ***
User can search for products
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    Rozetka.Search for Products
    
User must sign in to check out
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    Rozetka.Search for Products
    Rozetka.Select Product from Search Results
    Rozetka.Add Product to Cart
    Rozetka.Begin Checkout

