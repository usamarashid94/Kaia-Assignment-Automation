*** Settings ***
Documentation  Page Object in Robot Framework
Library  AppiumLibrary
Resource  ../../venv/PageObjects/KeywordDefinationFiles/Home.robot
Resource  ../../venv/PageObjects/KeywordDefinationFiles/Login.robot
Resource  ../../venv/PageObjects/KeywordDefinationFiles/Util.robot
Resource  ../../venv/PageObjects/KeywordDefinationFiles/PostLogin.robot


*** Test Cases ***
Verify Fail Login to Kaia Health App
    Opening Application
    Click Login
    Input Invalid Username
    Input Password
    Click LoginWithEmail
    Check Login Failure with Invalid Email
    Clear Input Field   ${LoginUsernameInputBox}
    Clear Input Field   ${LoginPasswordInputBox}
    Input Incorrect Username
    Input Password
    Click LoginWithEmail
    Check Login Failure with Invalid Credentials
    Clear Input Field   ${LoginUsernameInputBox}
    Clear Input Field   ${LoginPasswordInputBox}
    Input Username
    Input Incorrect Password
    Click LoginWithEmail
    Check Login Failure with Invalid Credentials

Verify Successful Login to Kaia Health App
    Opening Application
    Click Login
    Input Username
    Input Password
    Click LoginWithEmail
    Check Login Success

#Verify Login with Invalid Email to Kaia Health App
#    Opening Application
#    Click Login
#    Input Invalid Username
#    Input Password
#    Click LoginWithEmail
#    Check Login Failure with Invalid Email
#
#Verify Login with Incorrect Email to Kaia Health App
#    Opening Application
#    Click Login
#    Input Incorrect Username
#    Input Password
#    Click LoginWithEmail
#    Check Login Failure with Invalid Credentials
#
#Verify Login with Incorrect Password to Kaia Health App
#    Opening Application
#    Click Login
#    Input Username
#    Input Incorrect Password
#    Click LoginWithEmail
#    Check Login Failure with Invalid Credentials