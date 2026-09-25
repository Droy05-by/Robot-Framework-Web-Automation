*** Settings ***
Resource    ../resources/common.resource
Resource    ../resources/keywords/login_keywords.resource
Resource    ../resources/keywords/products_keywords.resource
Resource    ../resources/keywords/cart_keywords.resource
Resource    ../resources/keywords/checkout_keywords.resource

Test Setup       Open Application
Test Teardown    Close Application

*** Test Cases ***

Complete Checkout
    Login With Valid Credentials
    Sleep    2s
    Verify Products Page
    Sleep    2s
    Add Backpack To Cart
    Sleep    2s
    Open Shopping Cart
    Sleep    2s
    Verify Cart Contains Item
    Sleep    2s
    Proceed To Checkout
    Sleep    2s
    Enter Customer Information    Debapriya    Roy    700001
    Sleep    2s
    Continue Checkout
    Sleep    2s
    Finish Order
    Sleep    2s
    Verify Order Completed