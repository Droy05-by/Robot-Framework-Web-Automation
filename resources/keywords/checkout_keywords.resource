*** Settings ***
Library    SeleniumLibrary
Resource   ../../pages/checkout_page.resource

*** Keywords ***

Enter Customer Information
    [Arguments]    ${fname}    ${lname}    ${postal}
    Input Text    ${CHECKOUT_FIRST_NAME_FIELD}    ${fname}
    Input Text    ${CHECKOUT_LAST_NAME_FIELD}     ${lname}
    Input Text    ${CHECKOUT_POSTAL_FIELD}        ${postal}

Continue Checkout
    Click Button    ${CHECKOUT_CONTINUE_BUTTON}

Finish Order
    Click Button    ${CHECKOUT_FINISH_BUTTON}

Verify Order Completed
    Wait Until Element Is Visible    ${CHECKOUT_COMPLETE_HEADER}    10s
    Element Should Contain    ${CHECKOUT_COMPLETE_HEADER}    Thank you for your order