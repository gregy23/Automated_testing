*** Settings ***
Library    SeleniumLibrary
Resource   resources/variables.robot
Resource   resources/keywords.robot

*** Test Cases ***
delete employee end to end test
    [Documentation]    Full workflow to create an employee in the system.
    
    Open Browser    ${URL}    edge
    Maximize Browser Window
    Login To System
    Navigate To Employee Management
    searching data
    clicking delete icon for employees module
    confirm yes to delete data
    Sleep    10s
    Close The Browser
