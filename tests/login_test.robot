*** Settings ***
Documentation  Login Functionality
Resource    ../keywords/keywords.resource
Test Setup    Open Browser  ${url}  ${browser}
Test Teardown    Close Browser


*** Test Cases ***

Verify Successful Login to the-internet.herokuapp
    [documentation]  This test case verifies that user is able to successfully Login to the-internet.herokuapp
    [tags]  Smoke
    Wait Until Element Is Visible  ${LoginUsernameInputBox}  timeout=${Timeout}
    Login
    Element Should Be Visible  ${logout}  timeout=${Timeout}
