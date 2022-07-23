*** Settings ***
Documentation               Login
Library                     AppiumLibrary 
Variables                    ../Resources/locators.yaml

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
    [Arguments]                     ${user_email}         ${user_password}    
    Click Element           	    ${sigin}
    Wait Until Element Is Visible   ${username}
    User input username             ${user_email}
    User input password             ${user_password}
    Click Element                   ${button_sigin}
    sleep   2s
    Element Should Be Visible       ${logo}
