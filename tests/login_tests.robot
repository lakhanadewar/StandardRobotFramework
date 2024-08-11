*** Settings ***
Resource    ../resources/keywords.robot
Resource    ../resources/variables.robot
Resource    ../config/config.robot

*** Test Cases ***
Valid Login Test
    [Tags]    login    TC101
    Open Browser To URL   ${URL}    ${BROWSER}
    Login To Application    ${VALID_USERNAME}    ${VALID_PASSWORD}
    Verify Text Present    Welcome Robot Framework
    Close Browser

Invalid Login Test
    [Tags]    login    TC102
    Open Browser To URL  ${URL}    ${BROWSER}
    Login To Application    ${INVALID_USERNAME}    ${INVALID_PASSWORD}
    Verify Text Present    The username and password could not be verified.
    Close Browser
