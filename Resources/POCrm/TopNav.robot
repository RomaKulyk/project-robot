*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${TOPNAV_SIGNIN_LINK} =  xpath=//*[@id="SignIn"]
${TOPNAV_SIGNOUT_LINK} =  Sign Out

*** Keywords ***
Click "Sign In" lInk
    Click Link    ${TOPNAV_SIGNIN_LINK}

Click "Sign Out" lInk
    Click Link    ${TOPNAV_SIGNOUT_LINK}