*** Settings ***
Documentation       search testcase
Library             AppiumLibrary
Resource            ../Pageobject/search.robot
Resource            ../Pageobject/login.robot
Resource            ../Pageobject/Base.robot
Test Setup          Base.Open Flight Application
Test Teardown       Close Application


*** Variables ***
${nomor}        DA935  

*** Test Cases ***
User Should Be Able To Search Flight Number
    User should be able to login with valid data
    User choose button search
    User input search data          flightid=${nomor}
    User tab button search
    Verity flight number