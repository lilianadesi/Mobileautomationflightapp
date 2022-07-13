*** Settings ***
Documentation               Login
Library                     AppiumLibrary
Variables                    ../Resources/locators.yaml


*** Variables ***
${valid_email}      support@ngendigital.com
${valid_password}   abc123

*** Keywords ***
User should be able to login
    Click Element            	    ${sigin}
    sleep       3s
    Input Text                      ${username}             ${valid_email}            
    Input Text                      ${password1}            ${valid_password}                                     
    Click Element                   ${button_sigin}
    sleep       5s

Verity User Login
    Element Should Be Visible       ${logo}
