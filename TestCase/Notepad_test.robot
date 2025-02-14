*** Settings ***
Library    AppiumLibrary

*** Variables ***
${APPIUM_SERVER}      http://127.0.0.1:5000
${AUTOMATION_NAME}    Windows
${PLATFORM_NAME}      Windows
${APP}    C:\\Windows\\System32\\notepad.exe

*** Test Cases ***
Open Notepad And Type
    [Documentation]    Open Notepad using its Window Handle and type text
    Open Application    ${APPIUM_SERVER}
    ...    automationName=${AUTOMATION_NAME}
    ...    platformName=${PLATFORM_NAME}
    ...    app=${APP}
    Sleep    2s
    Click Element    name=Edit
    Click Element    name=Time/Date
    Input Text    name=Text Editor    Automated Notepad Test
    Sleep    2s
    Close Application
