*** Settings ***
Documentation  This is some basic info about the whole suite
Resource    ../Resources/Common.robot
Resource    ../Resources/RozetkaApp.robot
Suite Setup    Insert Testing Data
Suite Teardown    Cleanup Testing Data
Test Setup  Begin Web Test
Test Teardown  End Web Test

# use the below line (without the # sign) to run the script
# robot -d Output .\Tests\tc7_catalog_button_opens_menu.robot

*** Test Cases ***
Catalog button should opens catalog dropdown menu
    [Tags]  Current
    RozetkaApp.Go To Main Page
    TopNav.Verify Catalog Button Exist
    TopNav.Click Catalog Button
    Sleep  1
    TopNav.Get All List Items
