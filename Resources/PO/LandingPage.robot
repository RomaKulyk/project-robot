*** Settings ***
Library  SeleniumLibrary


*** Keywords ***
Load
    Go To  https://rozetka.com.ua/ua/


Verify Page Loaded
    Wait Until Page Contains  Rozetka