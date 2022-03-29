*** Settings ***
Library  AppiumLibrary
Variables  ../Locators/Locators.py
Variables  ../TestData/Testdata.py

*** Keywords ***
Click Login
    Click Element  ${LoginButton}