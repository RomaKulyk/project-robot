*** Settings ***
Library  SeleniumLibrary
Resource  ../Constants.robot

*** Keywords ***
Load
    Go To  ${START_URL}

Verify Page Loaded
    Wait Until Page Contains  Rozetka