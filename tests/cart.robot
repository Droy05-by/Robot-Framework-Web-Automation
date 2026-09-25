*** Settings ***
Resource    ../resources/common.resource
Resource    ../resources/keywords/login_keywords.resource
Resource    ../resources/keywords/products_keywords.resource
Resource    ../resources/keywords/cart_keywords.resource

Test Setup       Open Application
Test Teardown    Close Application

*** Test Cases ***

Verify Product In Cart
    Login With Valid Credentials
    Verify Products Page
    Add Backpack To Cart
    Open Shopping Cart
    Verify Cart Contains Item