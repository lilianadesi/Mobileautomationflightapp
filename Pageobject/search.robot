*** Settings ***
Documentation               Search
Library                     AppiumLibrary
Variables                    ../Resources/locators.yaml

*** Keywords ***
User choose button search
    Click Element                       ${search}
    Wait Until Element Is Visible       ${nomor_penerbangan}
User input search data
    [Arguments]                         ${flightid}
    Input Text                          ${nomor_penerbangan}            ${flightid}
User tab button search 
    Click Element                       ${button_search}
Verity flight number
    Wait Until Element Is Visible       ${results}
    Element Should Be Visible           ${results}