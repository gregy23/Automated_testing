*** Settings ***
Library    SeleniumLibrary
Resource   resources/variables.robot
Resource   resources/keywords.robot

*** Test Cases ***
edit end to end test
    [Documentation]    Full workflow to create an employee in the system.
    
    Open Browser    ${URL}    edge
    Maximize Browser Window
    Login To System
    Navigate To Employee Management
    searching data
    click edit icon
    scroll down
    CLICKING SAVE BUTTON FOR EMPLOYEE
    click edit confirm no
    
    Close The Browser
