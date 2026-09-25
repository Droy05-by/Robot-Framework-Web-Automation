*** Settings ***
Library    SeleniumLibrary
Resource   ../../pages/products_page.resource

*** Keywords ***

Verify Products Page
    Wait Until Element Is Visible    ${PRODUCTS_TITLE}    10s
    Element Should Contain    ${PRODUCTS_TITLE}    Products

Add Backpack To Cart
    Click Button    ${BACKPACK_ADD_BUTTON}

Remove Backpack From Cart
    Click Button    ${BACKPACK_REMOVE_BUTTON}

Open Shopping Cart
    Click Element    ${CART_ICON}