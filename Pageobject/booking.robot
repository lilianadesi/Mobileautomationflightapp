*** Settings ***
Library                     AppiumLibrary
Variables                    ../Resources/locators.yaml


*** Keywords ***
User tab button book
    Click Element               ${book}
    sleep       5s
User makes booking
    Click Element               ${from}
    sleep       3s
    Click Element               ${newyork}
    Click Element               ${to}
    sleep       3s
    Click Element               ${london}
    Click Element               ${class}
    sleep       3s
    Click Element               ${first}
    Click Element               ${start_date}
    sleep       3s
    Click Element               ${Date}
    Click Element               ${button_date}
    Click Element               ${flight}
    Click Element               ${button_book}
    sleep       5s
User choose price
    Click Element               ${price}
    Click Element               ${confrim}
    sleep       3s
Verity booking success
    Element Should Be Visible   ${ticket}