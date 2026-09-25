*** Settings ***
Library    SeleniumLibrary
Resource   ../../pages/cart_page.resource

*** Keywords ***

Verify Cart Contains Item
    Wait Until Element Is Visible    ${CART_ITEM}    10s

Proceed To Checkout
    Click Button    ${CHECKOUT_BUTTON}