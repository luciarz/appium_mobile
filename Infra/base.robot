*** Settings ***
Library             AppiumLibrary
Suite Setup         Open Test Application
Suite Teardown      Close Test Application

*** Variables ***

*** Keywords ***
Open Test Application
    Open Application    http://127.0.0.1:4723/wd/hub
    ...                 platformName=Android
   # ...                 deviceName=Pixel_2_API_32
   # ...                 app=${CURDIR}/Apk/Calculator.apk
    ...                 appium:deviceName=Pixel 2 API 30
    ...                 app=./Apk/Calculator.apk
    ...                 automationName=


Close Test Application
    Close Application
    

