*** Settings ***
Library  SeleniumLibrary
Library   allure
Resource    ../../Resource/Variables/Locators.py

*** Variables ***
${browser}    chrome
${url}    https://www.aveda.com/

*** Test Cases ***
LoginPageTest
    Open Browser    ${url}    ${browser}    options=add_argument("--window-position=1920,0")
    Maximize Browser Window
    Set Selenium Implicit Wait    10
Verify Homepage title
    Title Should Be    Vegan Hair Products, Shampoos, Conditioners & Salons | Aveda
Click Signin Link
    Click Link    xpath:(//a[contains(@class,'signin')])[1]
Enter Username
    Input Text    xpath:(//input[@name='EMAIL_ADDRESS'])[3]    Tester+1@gmail.com
    Input Text    xpath:(//input[@name='PASSWORD'])[4]    Tester123
    Execute Javascript    window.scrollTo(0,30)
#    Wait Until Element Is Visible    xpath:(//input[@class='button'])[2]
#    Scroll Element Into View     xpath://h2[text()='Connect your social account']
    Sleep    2
    Wait Until Element Is Visible    xpath:(//input[@class='button'])[2]
    Click Element  xpath:(//input[@class='button'])[2]
    Close Browser


*** Keywords ***
