*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${HOME_HEADER_LABEL} =  Customers Are Priority One!

*** Keywords ***
Navigate To
    Go To    ${URL}
    # Vefify Page Loaded

Vefify Page Loaded
    Wait Until Page Contains    ${HOME_HEADER_LABEL}    