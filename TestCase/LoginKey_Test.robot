*** Settings ***
Library  SeleniumLibrary
Resource    ../Resource/Keyword/LoginPage_Keyword.robot
Resource    Resource/Variables/test_data.robot


*** Test Cases ***
LoginTest
    Open Browser    ${SiteUrl}    ${Browser}
    Verify Homepage Title
    Click Signin Link
    Enter Username    ${user}
    Enter Password    ${pwd}