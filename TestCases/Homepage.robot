*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
HomePageTest
    Open Browser    https://www.aveda.com/    chrome
    Maximize Browser Window
    Click Link    xpath:(//a[contains(@class,'signin')])[1]
    Input Text    xpath:(//input[@name='EMAIL_ADDRESS'])[3]    Tester+1@gmail.com
    Input Text    xpath:(//input[@name='PASSWORD'])[4]    Tester123
    Execute Javascript    window.scrollTo(o,1000)
#    Wait Until Element Is Visible    xpath:(//input[@class='button'])[2]
    Scroll Element Into View     xpath://h2[text()='Connect your social account']
    Sleep    3
    Click Element  xpath:(//input[@class='button'])[2]


*** Keywords ***
