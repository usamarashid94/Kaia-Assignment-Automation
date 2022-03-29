*** Settings ***
Library  AppiumLibrary
Variables  ../Locators/Locators.py
Variables  ../TestData/Testdata.py

*** Variables ***
${APPIUM_SERVER}    http://localhost:4723/wd/hub
${PLATFORM_NAME}    Android
${DEVICE_NAME}    Pixel 3a API 30
${APP_PACKAGE}    com.kaiahealth.app
${APP_ACTIVITY}    com.kaiahealth.app.view.general.splash.SplashActivity

*** Keywords ***
Opening Application
    #Wait Until Element Is Visible  ${LoginUsernameInputBox}  timeout=30
    #Launch Mobile Application
    Open Application    ${APPIUM_SERVER}
    ...    platformName=${PLATFORM_NAME}
    ...    deviceName=${DEVICE_NAME}
    ...    appPackage=${APP_PACKAGE}
    ...    appActivity=${APP_ACTIVITY}
    Wait Until Element Is Visible  ${LoginButton}  timeout=60

Clear Input Field
    [Arguments]  ${inputField}
    Clear Text  ${inputField}
