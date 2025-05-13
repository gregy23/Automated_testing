*** Settings ***
Library    SeleniumLibrary
Resource   resources/variables.robot
Resource   resources/keywords.robot

*** Test Cases ***
edit account end to end test
    [Documentation]    Full workflow to create an employee in the system.
    Open Browser    ${URL}    edge
    Maximize Browser Window
    Login To System
    Navigate To edit module
    searching for account
    click search icon for edit module
    click edit icon
    edit user account
    scroll down
    click save button for ACCOUNT
    
    Close The Browser
