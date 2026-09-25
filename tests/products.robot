*** Settings ***
Resource    ../resources/common.resource
Resource    ../resources/keywords/login_keywords.resource
Resource    ../resources/keywords/products_keywords.resource

Test Setup       Open Application
Test Teardown    Close Application

*** Test Cases ***

Verify Products Page
    Login With Valid Credentials
    Verify Products Page

Add Backpack To Cart
    Login With Valid Credentials
    Verify Products Page
    Add Backpack To Cart