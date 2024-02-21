*** Settings ***
Library  SeleniumLibrary


*** Variables ***
@{ROBOTS}=  DROPDOWNLIST  //div[@class='css-19isju1']

*** Test Cases ***
This is the Sample test case
    [documentation]  spruce-robot test
    [tags]  regression

    Open Browser  https://app.spruce-dev.com/login  chrome
    Wait Until Element Is Visible  username  10
    Input Text  username  lsspl.sprucepatient+devadmin1@gmail.com
    Input Password  password  asdf12

    Click Button  Log In

    Wait Until Page Contains  inbox  15

    FOR  ${robot}  IN  @{ROBOTS}
        Log  ${robot}
    END

    Close Browser


*** Keywords ***
