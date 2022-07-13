*** Settings ***
Documentation       search testcase
Library             AppiumLibrary
Resource            ../Pageobject/search.robot
Resource            ../Pageobject/login.robot
Resource            ../Pageobject/Base.robot


*** Variables ***
${nomor}        DA935  

*** Test Cases ***
User Should Be Able To Search Flight Number
    [Setup]                     Open Flight Application
    User should be able to login
    User choose button search
    User input search data          flightid=${nomor}
    User tab button search
    Verity flight number
    [Teardown]                  Close Application