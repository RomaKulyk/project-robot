*** Settings ***
Documentation  This is some basic info about the whole suite
Resource    ../Resources/Common.robot
Resource    ../Resources/RozetkaApp.robot
Suite Setup    Insert Testing Data
Suite Teardown    Cleanup Testing Data
Test Setup  Begin Web Test
Test Teardown  End Web Test

# use the below line (without the # sign) to run the script
# robot -d results .\Tests\tc1_left_side_bar_contains.robot

*** Test Cases ***
User should be able to choose any item from 18 products categories in leftside bar
    [Tags]  Current
    RozetkaApp.Go To Main Page
    LeftSideBar.Verify Category Links Exists
    LeftSideBar.Click Product Category Links
    RozetkaApp.Verify Main Page Contains Categories