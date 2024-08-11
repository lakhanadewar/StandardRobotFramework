*** Settings ***
Library    SeleniumLibrary
Library    ../libraries/custom_library.py
Library    ../pages/login_page.py
Keyword Tags    

*** Keywords ***
Open Browser To URL
    [Arguments]    ${url}    ${browser}=Chrome
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Wait Until Page Contains Element    //body


Login To Application
    [Arguments]    ${username}    ${password}
    Input Text    //input[@name="username"]    ${username}
    Input Text    //input[@name="password"]    ${password}
    Click Element    xpath://*[@value='Log In']    

Verify Text Present
    [Arguments]    ${text}
    Page Should Contain    ${text}
