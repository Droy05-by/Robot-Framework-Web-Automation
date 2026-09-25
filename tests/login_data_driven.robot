*** Settings ***
Library    SeleniumLibrary
Library    DataDriver    file=../data/login_data.csv    dialect=excel
Resource   ../resources/common.resource
Resource   ../resources/keywords/login_keywords.resource

Test Setup       Open Application
Test Teardown    Close Application
Test Template    Login Test

*** Test Cases ***
Login Test With CSV Data    Default    Default    Default

*** Keywords ***
Login Test
    [Arguments]    ${username}    ${password}    ${expected}
    Login With Credentials    ${username}    ${password}

    IF    '${expected}' == 'success'
        Verify Successful Login
    ELSE
        Page Should Contain Element    xpath=//h3[@data-test='error']
    END