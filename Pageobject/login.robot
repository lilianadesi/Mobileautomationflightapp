*** Settings ***
Documentation               Login
Library                     AppiumLibrary 
Variables                    ../Resources/locators.yaml

*** Variables ***
${valid_email}          support@ngendigital.com
${valid_password}       abc123

*** Keywords ***
User tab element sigin
    Click Element            	    ${sigin}
    Wait Until Element Is Visible   ${username}
    
User input username
    [Arguments]                     ${user_email}
    Input Text                      ${username}             ${user_email}

User input password
    [Arguments]                     ${user_password} 
    Input Text                      ${password}             ${user_password} 

User tab sigin button
    Click Element                   ${button_sigin}
    sleep       3s

User should be able to login with valid data              
    Click Element           	    ${sigin}
    Wait Until Element Is Visible   ${username}
    Input Text                      ${username}             ${valid_email}
    Input Text                      ${password}             ${valid_password}
    Click Element                   ${button_sigin}
    sleep   2s
    Element Should Be Visible       ${logo}
