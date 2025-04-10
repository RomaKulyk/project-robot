*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${TOPNAV_SIGNIN_LINK} =  xpath=//*[@id="SignIn"]

*** Keywords ***
Click "Sign In" lInk
    Click Link    ${TOPNAV_SIGNIN_LINK}