*** Settings ***
Documentation  This is some basic info about the whole suite
Resource    ../Resources/Common.robot
Resource    ../Resources/RozetkaApp.robot
Resource    ../Resources/PO/Footer.robot
Suite Setup    Insert Testing Data
Suite Teardown    Cleanup Testing Data
Test Setup  Begin Web Test
Test Teardown  End Web Test

# use the below line (without the # sign) to run the script
# robot -d results .\Tests\tc4_footer_cross_site_links.robot

*** Test Cases ***
Footer cross site links should contains 18 categories
    [Tags]  Current
    RozetkaApp.Go To Main Page
    Footer.Click Footer Cross Site Links
    Footer.Verify Footer Cross Site Count