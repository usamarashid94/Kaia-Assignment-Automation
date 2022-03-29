*** Settings ***
Documentation    Suite description
Library  AppiumLibrary
Variables  ../Locators/Locators.py
Variables  ../TestData/Testdata.py

*** Keywords ***
Input Username
    Input Text  ${LoginUsernameInputBox}  ${Username}

Input Invalid Username
    Input Text  ${LoginUsernameInputBox}  ${InvalidUsername}

Input Incorrect Username
    Input Text  ${LoginUsernameInputBox}  ${IncorrectUsername}

Input Password
    Input Text  ${LoginPasswordInputBox}  ${Password}

Input Incorrect Password
    Input Text  ${LoginPasswordInputBox}  ${IncorrectPassword}

Click LoginWithEmail
    Click Element  ${LoginWithEmailButton}