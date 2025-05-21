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
    navigate approvalworkflow module
    click add icon approval workflow
    name in approvalworkflow
    trasaction list approvalworkflow
    transaction list selection
    description approvalworkflow
    check the selecall checkbox
    select tab
    add sequence
    name sequence
    select role approver1
    description for approver1
    click save awf
    click ok to confirm
    add sequence
    name sequence2
    description for approver2
    select role approver2
    click save awf
    click ok to confirm
    scroll down
    save icon for awf
    Sleep    30s
    
    Close The Browser
