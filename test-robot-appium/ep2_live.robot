*** Settings ***
Library     AppiumLibrary


*** Test Cases ***
Open Test Application for android
    # ToDO test step
    Open Test Application
    Close Popup When App Start
    Wait Until Page Contains Element    android=UiSelector().className("android.widget.TextView").text("Expansion Panels")    30s
    Tap    android=UiSelector().className("android.widget.TextView").text("Expansion Panels")
    Sleep    3s
    Tap    android=UiSelector().className("android.widget.TextView").text("Basic")
    Wait Until Page Contains Element    id=com.material.components:id/bt_toggle_input
    Tap    id=com.material.components:id/bt_toggle_input
    Sleep    3s
    Tap    android=UiSelector().className("android.widget.RadioButton").text("Male")
    Tap    id=com.material.components:id/bt_save_input
    Wait Until Page Contains    Data saved
    # Click Search Icon On Topbar
    # Input Search Keywords Into Search Box    Icon
    # Click Bottom Navigation Icon Menu


*** Keywords ***
Open Test Application
    Open Application
    ...    remote_url=http://localhost:4723/wd/hub
    ...    deviceName=Pixel_4_API_29_Flutter
    ...    platformVersion=10
    ...    platformName=android
    ...    appPackage=com.material.components
    ...    appActivity=com.material.components.activity.MainMenu

Close Popup When App Start
    Wait Until Page Contains Element    id=com.material.components:id/bt_close    30s
    Tap    id=com.material.components:id/bt_close

Click Search Icon On Topbar
    # Todo to click search icon
    Wait Until Page Contains Element    accessibility_id=Search    30s
    Tap    accessibility_id=Search

Input Search Keywords Into Search Box
    [Arguments]    ${kw}
    Wait Until Page Contains Element    id=com.material.components:id/search_src_text    30s
    Input Text    id=com.material.components:id/search_src_text    ${kw}

Click Bottom Navigation Icon Menu
    Wait Until Page Contains Element
    ...    xpath=//android.widget.LinearLayout[android.widget.TextView[@text='Bottom Navigation'] and android.widget.TextView[@text='Icon'] ]
    ...    30s
    Tap
    ...    xpath=//android.widget.LinearLayout[android.widget.TextView[@text='Bottom Navigation'] and android.widget.TextView[@text='Icon'] ]
