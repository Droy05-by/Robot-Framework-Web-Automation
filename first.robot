
*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Open Google
    Open Browser    https://www.google.com    Chrome
    Sleep    3s
    Close All Browsers