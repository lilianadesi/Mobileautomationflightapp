*** Settings ***
Documentation       booking testcase
Library             AppiumLibrary
Resource            ../Pageobject/booking.robot
Resource            ../Pageobject/search.robot

*** Test Cases ***
user should be able to booking in Application
    [Setup]                    Open Flight Application
    User Login
    User Clik button book
    User makes booking
    User choose price
    Verity booking success