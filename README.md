# Kaia-Assignment-Automation
This repository contains source code for Automated Test Scripts of Login functionality in the Kaia App using Page Object Model with Robot Framework and Appium.

## Setup

##### Ensure following are installed on the system:
  1. Python 3.0
  2. Pycharm IDE
  3. Appium
  4. AppiumLibrary
  5. Robot Framework

##### Running Tests
  1. Clone this gitub repo and cd into it
  2. Add Test Data in PageObjects/TestData/TestData.py
  3. Run the Appium Server
```
Appium &
```
  4. Update Emulator name in PageObjects/KeywordDefinationFiles/Util.robot at line number 9
  5. Run the following command to run entire Test Suite
```
robot venv/Tests/testing.robot
```
  Run the following command to run a single Test 
```
robot -t "<Test Case Name>" venv/Tests/testing.robot
```
