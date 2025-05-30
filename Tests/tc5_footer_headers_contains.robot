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
# robot -d Output .\Tests\tc5_footer_headers_contains.robot

*** Test Cases ***
Footer headers should contain 4 headers
    [Tags]  Current
    RozetkaApp.Go To Main Page
    Footer.Verify Footer Headers
    Footer.Verify Footer Headers Count
    Footer.Take Footer Screenshot  footer_headers.png