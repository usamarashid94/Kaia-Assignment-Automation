*** Settings ***
Documentation    Suite description
Library  AppiumLibrary
Variables  ../Locators/Locators.py
Variables  ../TestData/Testdata.py

*** Keywords ***
Check Login Success
    Wait Until Element Is Visible   ${SuccessLoginText}     timeout=60
    Element Text Should Be  ${SuccessLoginText}  How is your pain today?

Check Login Failure with Invalid Email
    Wait Until Element Is Visible   ${LoginWithInvalidEmailorPass}      timeout=60
    Element Text Should Be  ${LoginWithInvalidEmailorPass}  Enter a valid email address

Check Login Failure with Invalid Credentials
    Wait Until Element Is Visible   ${LoginWithInvalidEmailorPass}      timeout=60
    Element Text Should Be  ${LoginWithInvalidEmailorPass}  Wrong credentials
