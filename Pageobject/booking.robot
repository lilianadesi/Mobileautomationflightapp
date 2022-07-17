*** Settings ***
Library                     AppiumLibrary
Variables                    ../Resources/locators.yaml


*** Keywords ***
User tab button book
    Click Element                       ${book}

User makes booking
    Wait Until Element Is Visible       ${from}
    Click Element                       ${from}
    Wait Until Element Is Visible       ${newyork}
    Click Element                       ${newyork}

    Click Element                       ${to}
    Wait Until Element Is Visible       ${london}
    Click Element                       ${london}

    Click Element                       ${class}
    Wait Until Element Is Visible       ${first}
    Click Element                       ${first}

    Click Element                       ${start_date}
    Wait Until Element Is Visible       ${Date}
    Click Element                       ${Date}
    
    Click Element                       ${button_date}
    Click Element                       ${flight}
    Click Element                       ${button_book}

User choose price
    Wait Until Element Is Visible       ${price}
    Click Element                       ${price}
    Click Element                       ${confrim}

Verity booking success
    Wait Until Element Is Visible       ${ticket}
    Element Should Be Visible           ${ticket}