*** Settings ***
Documentation  This is some basic info about the whole suite
Resource    ../Resources/Common.robot
Resource    ../Resources/RozetkaApp.robot
Suite Setup    Insert Testing Data
Suite Teardown    Cleanup Testing Data
Test Setup  Begin Web Test
Test Teardown  End Web Test

# use the below line (without the # sign) to run the script
# robot -d results .\Tests\tc1_left_side_bar_ways_to_return.robot

*** Test Cases ***
User should be able to return to main page in three different ways
    [Tags]  Current
    RozetkaApp.Go To Main Page
    LeftSideBar.Click Product Category Link  ${PRODUCT_CATEGORY_LINK_1}
    RozetkaApp.Return To Main Page
    LeftSideBar.Click Product Category Link  ${PRODUCT_CATEGORY_LINK_2}
    RozetkaApp.Return To Main Page
    LeftSideBar.Click Product Category Link  ${PRODUCT_CATEGORY_LINK_3}
    RozetkaApp.Return To Main Page
    