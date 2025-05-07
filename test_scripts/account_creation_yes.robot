*** Settings ***
Library    SeleniumLibrary
Resource   resources/variables.robot
Resource   resources/keywords.robot

*** Test Cases ***
Create employee end to end test
    [Documentation]    Full workflow to create an employee in the system.
    
    Open Browser    ${URL}    edge
    Maximize Browser Window
    Login To System
    Navigate To Employee Management
    clicking add icon from employee Index
    fill up the madatory inpormation
    scroll down
    click save button
    click save and Process
    click procces to create User
    select role
    input UserName
    scroll down
    

    Sleep    100s
    Close The Browser
