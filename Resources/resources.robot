*** Settings ***
Library           OperatingSystem

*** Variables ***
&{DICTIONARY}    username=testuser    password=demo
&{DICTIONARY2}    username=testuser2    password=demo2

*** Keywords ***
Log My Username
    [Arguments]    ${USERNAME}
    Log            ${USERNAME}

Log My Password
    [Arguments]    ${PASSWORD}
    Log            ${PASSWORD}

Log My Specific Username And Password
    [Arguments]    ${USERNAME2}  ${PASSWORD}
    Log My Password   ${PASSWORD}
    Log My Username   ${USERNAME2}
    Log    This is the final video of the first chapter
