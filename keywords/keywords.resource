*** Settings ***
Documentation  Login Functionality
Library  SeleniumLibrary
Resource  ../keywords/variables.resource


*** Variables ***
${LoginUsernameInputBox}   id:username
${LoginPasswordInputBox}   id:password
${LoginButton}    css:button[type="submit"]
${logout}    css:[href="/logout"]



*** Keywords ***
Login
    Input Text  ${LoginUsernameInputBox}  ${user}
    Input Text  ${LoginPasswordInputBox}  ${pwd}
    Click Element  ${LoginButton}
