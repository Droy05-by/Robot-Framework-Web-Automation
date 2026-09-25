*** Settings ***
Resource    ../resources/common.resource
Resource    ../resources/variables.resource
Resource    ../resources/keywords/login_keywords.resource

Test Setup       Open Application
Test Teardown    Close Application

*** Test Cases ***

Valid Login
    Login With Valid Credentials
    Verify Successful Login