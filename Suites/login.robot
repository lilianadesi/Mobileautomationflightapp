*** Settings ***
Documentation       Login testcase
Library             AppiumLibrary
Resource            ../Pageobject/login.robot
Resource            ../Pageobject/Base.robot

*** Test Cases ***
user login
    [Setup]                     Open Flight Application
    User should be able to login
    Verity User Login
    [Teardown]                  Close Application