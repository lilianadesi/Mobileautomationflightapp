*** Settings ***
Documentation               Search
Library                     AppiumLibrary
Variables                    ../Resources/locators.yaml

*** Keywords ***
User choose button search
    Click Element                   ${search}
    sleep       5s
User input search data
    [Arguments]                     ${flightid}
    Input Text                      ${nomor_penerbangan}            ${flightid}
User tab button search 
    Click Element                   ${button_search}
    sleep       5s
Verity flight number
    Element Should Be Visible       ${results}