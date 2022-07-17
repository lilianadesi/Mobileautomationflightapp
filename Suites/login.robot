*** Settings ***
Documentation       Login testcase
Library             AppiumLibrary
Resource            ../Pageobject/login.robot
Resource            ../Pageobject/Base.robot
Test Setup          Base.Open Flight Application
Test Teardown       Close Application

*** Variables ***
${valid_email}          support@ngendigital.com
${valid_password}       abc123
${invalid_email}        budi@gmail.com
${invalid_password}     123456

*** Test Cases ***
User not be able to login with invalid email
    User tab element sigin
    User input username         user_email=${invalid_email}
    User input password         user_password=${valid_password}
    User tab sigin button

User not be able to login with invalid password
    User tab element sigin
    User input username         user_email=${valid_email}
    User input password         user_password=${valid_email}
    User tab sigin button

User should be able to login with valid data
    User should be able to login with valid data        