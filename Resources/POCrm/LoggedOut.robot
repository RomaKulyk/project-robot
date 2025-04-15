*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${LOOGGEDOUT_HEADER_LABEL} =  Signed Out


*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains    ${LOOGGEDOUT_HEADER_LABEL}