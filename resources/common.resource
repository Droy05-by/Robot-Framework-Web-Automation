*** Settings ***
Library    SeleniumLibrary
Resource   variables.resource

*** Keywords ***

Open Application
    Open Browser    ${BASE_URL}    ${BROWSER}
    Maximize Browser Window

Close Application
    Close All Browsers