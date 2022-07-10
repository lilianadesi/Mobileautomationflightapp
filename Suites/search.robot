*** Settings ***
Documentation       search testcase
Library             AppiumLibrary
Resource            ../Pageobject/search.robot
 

*** Test Cases ***
user should be able to do an operation in Application
    [Setup]                    Open Flight Application

    User Login
    User Clik button search
    User input search data