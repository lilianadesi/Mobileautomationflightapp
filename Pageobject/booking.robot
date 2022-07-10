*** Settings ***
Library                     AppiumLibrary
Variables                    ../Resources/locators.yaml

*** Variables ***
${REMOTE_URL}               http://127.0.0.1:4723/wd/hub
${PLATFORM_NAME}            Android
${PLATFORM_VERSION}         9.0 
${DEVICE_NAME}              emulator-5554
${PACKAGE_NAME}             com.example.myapplication 
${ACTIVITY_NAME}            com.example.myapplication.MainActivity


*** Keywords ***
User Clik button book
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