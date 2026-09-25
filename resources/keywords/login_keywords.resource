*** Settings ***
Library    SeleniumLibrary
Resource   ../../pages/login_page.resource

*** Keywords ***

Login With Credentials
    [Arguments]    ${username}    ${password}
    Input Text    ${USERNAME_FIELD}    ${username}
    Input Password    ${PASSWORD_FIELD}    ${password}
    Click Button    ${LOGIN_BUTTON}

Login With Valid Credentials
    Login With Credentials    ${VALID_USERNAME}    ${VALID_PASSWORD}

Verify Successful Login
    Wait Until Page Contains    Products    10s

Verify Login Error
    [Arguments]    ${expected_message}
    Wait Until Page Contains    ${expected_message}    10s