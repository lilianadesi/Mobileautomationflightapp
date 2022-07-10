*** Settings ***
Library                     AppiumLibrary
Variables                    ../Resources/locators.yaml

*** Variables ***
${REMOTE_URL}               http://127.0.0.1:4723/wd/hub
${PLATFORM_NAME}            Android
${PLATFORM_VERSION}         9.0 
${DEVICE_NAME}              emulator-5554
${PACKAGE_NAME}             com.example.myapplication 
${ACTIVITY_NAME}            com.example.myapplication.MainActivity
${email}                    support@ngendigital.com
${password}                 abc123
${nomor}                    DA935

*** Keywords ***
Open Flight Application             
    Open Application        ${REMOTE_URL} 
    ...                     platformName=${PLATFORM_NAME}
    ...                     platformVersion=${PLATFORM_VERSION}
    ...                     deviceName=${DEVICE_NAME}
    ...                     appActivity=${ACTIVITY_NAME}
    ...                     appPackage=${PACKAGE_NAME}
    ...                     automationName=UiAutomator2
    ...                     newCommandTimeout=5000                   

User Login
    Click Element            	    ${sigin}
    sleep       5s
    Input Text                      ${username}                     ${email}
    Input Password                  ${password1}                    ${password}
    Click Element                   ${button_sigin}
    sleep       5s
User Clik button search
    Click Element                   ${search}
    sleep       5s
User input search data
    Input Text                      ${nomor_penerbangan}            ${nomor}
    Click Element                   ${button_search}
    sleep       5s
    Element Should Be Visible       ${results}