*** Settings ***
Documentation       booking testcase
Library             AppiumLibrary
Resource            ../Pageobject/booking.robot
Resource            ../Pageobject/login.robot
Resource            ../Pageobject/Base.robot

*** Test Cases ***
user should be able to booking in Application
    [Setup]                    Open Flight Application
    User should be able to login
    User tab button book
    User makes booking
    User choose price
    Verity booking success
    [Teardown]                  Close Application