*** Settings ***
Documentation       booking testcase
Library             AppiumLibrary
Resource            ../Pageobject/booking.robot
Resource            ../Pageobject/login.robot
Resource            ../Pageobject/Base.robot
Test Setup          Base.Open Flight Application
Test Teardown       Close Application

*** Test Cases ***
user should be able to booking in Application
    User should be able to login with valid data
    User tab button book
    User makes booking
    User choose price
    Verity booking success