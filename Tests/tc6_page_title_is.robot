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
# robot -d Output .\Tests\tc6_page_title_is.robot

*** Test Cases ***
Product page should opens by clicking product link
    [Tags]  Current
    RozetkaApp.Go To Main Page
    SearchResult.Click Product link  ${PRODUCT_1}
    Product.Verify Page Title Is  Набір гелів Alles GUT! Delicate ЕСО для делікатного прання кольорової білизни 2 л + для прання чорних та темних тканин 2 л (4820189880660) – купити онлайн на ROZETKA
    Product.Take Product Screenshot  product_page.png
