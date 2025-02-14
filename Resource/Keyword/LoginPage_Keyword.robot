*** Settings ***
Library  SeleniumLibrary
Library   allure
Variables    ../../Resource/Variables/Locators.py

*** Variables ***
${browser}    chrome
${url}    https://www.aveda.com/

*** Keywords ***
LoginPageTest
    Open Browser    ${url}    ${browser}    options=add_argument("--window-position=1920,0")
    Maximize Browser Window
    Set Selenium Implicit Wait    10
Verify Homepage title
    Title Should Be    Vegan Hair Products, Shampoos, Conditioners & Salons | Aveda
Click Signin Link
    Click Link    ${signin_link}
Enter Username
    Input Text    ${txt_loginUserName}    ${username}
Enter Password
    Input Text    ${txt_loginPassword}    ${password}
    Execute Javascript    ${scroll_into_view}
#    Wait Until Element Is Visible    xpath:(//input[@class='button'])[2]
#    Scroll Element Into View     xpath://h2[text()='Connect your social account']
    Sleep    2
    Wait Until Element Is Visible    ${signin_button}
    Click Element  ${signin_button}
    Close Browser


*** Keywords ***
