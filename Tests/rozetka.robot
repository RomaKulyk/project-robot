*** Settings ***
Documentation  This is some basic info about the whole suite
Resource    ../Resources/Common.robot
Resource    ../Resources/RozetkaApp.robot
Suite Setup    Insert Testing Data
Suite Teardown    Cleanup Testing Data
Test Setup  Begin Web Test
Test Teardown  End Web Test

# use the below line (without the # sign) to run the script
# robot -d results .\Tests\rozetka.robot

*** Variables ***
${BROWSER}    chrome
${START_URL}    https://rozetka.com.ua
${SEARCH_TERM}    Ferrari 458

*** Test Cases ***
Logged out user should be able to search for products
    [Documentation]  This is some basic info about the test
    [Tags]  Current
    RozetkaApp.Search for Products

Search results page should contains 60 products
    [Tags]  Current
    RozetkaApp.Search for Products
    RozetkaApp.Verify Results Page Contains Products

Logged out user should be able to view a product
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    RozetkaApp.Search for Products
    RozetkaApp.Select Product from Search Results

Logged out user should be able to add a product to the cart
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    RozetkaApp.Search for Products
    RozetkaApp.Select Product from Search Results
    RozetkaApp.Add Product to Cart
    
Logged out user should be asked to sign in to check out
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    RozetkaApp.Search for Products
    RozetkaApp.Select Product from Search Results
    RozetkaApp.Add Product to Cart
    RozetkaApp.Begin Checkout

