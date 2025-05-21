*** Settings ***
Library    SeleniumLibrary



*** Keywords ***
Login To System
    Input Text         id=UserName          ${USERNAME}
    Input Password     id=Password          ${PASSWORD}
    Input Text         id=UserCaptchaCode   ${CAPTCHA_BYPASS}
    Click Button       id=btnLogins

Navigate To Employee Management
    Wait Until Page Contains Element    xpath=//*[@id="UserManagement"]/span/span[1]
    Mouse Over                          xpath=//*[@id="UserManagement"]/span/span[1]
    Wait Until Page Contains Element    xpath=//*[@id="USER"]/span/span[1]
    Mouse Over                          xpath=//*[@id="USER"]/span/span[1]
    Wait Until Page Contains Element    xpath=//*[@id="Person/Index"]/a/span
    Mouse Over                          xpath=//*[@id="Person/Index"]/a/span
    Click Element                       xpath=//*[@id="Person/Index"]/a/span

clicking add icon from employee Index
    Wait Until Element Is Visible    xpath=//*[@id="btnCreate"]    timeout=10s
    Click Button    xpath=//*[@id="btnCreate"]


fill up the madatory inpormation
# Select Employee Title
    Wait Until Element Is Visible    xpath=//*[@id="createForm"]/div[2]/div[2]/table/tbody/tr[1]/td[2]/span/button
    Click Element    xpath=//*[@id="createForm"]/div[2]/div[2]/table/tbody/tr[1]/td[2]/span/button
    Wait Until Element Is Visible    xpath=//*[@id="EmployeeTitleId_listbox"]/li[5]/span
    Click Element    xpath=//*[@id="EmployeeTitleId_listbox"]/li[5]/span

    # Fill Required Fields
    Input Text    xpath=//*[@id="LastName"]    ${LASTNAME}
    Input Text    xpath=//*[@id="FirstName"]   ${FIRSTNAME}
    Input Text    xpath=//*[@id="ContactNo"]   ${CONTACTNUMBER}
    Input Text    xpath=//*[@id="Email"]       ${EMAIL}

    # Select Employee Designation
    Wait Until Element Is Visible    xpath=//*[@id="createForm"]/div[4]/div[1]/table/tbody/tr[2]/td[2]/span/button
    Click Element    xpath=//*[@id="createForm"]/div[4]/div[1]/table/tbody/tr[2]/td[2]/span/button
    Wait Until Element Is Visible    xpath=//span[@class='k-list-item-text' and text()='AML201 - AML Designation']
    Click Element    xpath=//span[@class='k-list-item-text' and text()='AML201 - AML Designation']

    # Select Employee Status
    Wait Until Element Is Visible    xpath=//*[@id="createForm"]/div[4]/div[1]/table/tbody/tr[3]/td[2]/span/button
    Click Button    xpath=//*[@id="createForm"]/div[4]/div[1]/table/tbody/tr[3]/td[2]/span/button
    Wait Until Element Is Visible    xpath=//*[@id="EmployeeStatusId_listbox"]/li[5]
    Click Element    xpath=//*[@id="EmployeeStatusId_listbox"]/li[5]

    # Select Branch
    Wait Until Element Is Visible    xpath=//*[@id="SelectBranch"]    timeout=10s
    Scroll Element Into View         xpath=//*[@id="SelectBranch"]
    Click Button                     xpath=//*[@id="SelectBranch"]
    Wait Until Element Is Visible    xpath=//*[@id="BranchViewModel"]/div[3]/table/tbody/tr[1]/td[1]/button/span    timeout=10s
    Scroll Element Into View         xpath=//*[@id="BranchViewModel"]/div[3]/table/tbody/tr[1]/td[1]/button/span
    Click Element                    xpath=//*[@id="BranchViewModel"]/div[3]/table/tbody/tr[1]/td[1]/button/span

    # Select Office
    Wait Until Element Is Visible    xpath=//*[@id="createForm"]/div[4]/div[2]/table/tbody/tr[3]/td[2]/span/button
    Click Button    xpath=//*[@id="createForm"]/div[4]/div[2]/table/tbody/tr[3]/td[2]/span/button
    Wait Until Element Is Visible    xpath=//span[@class='k-list-item-text' and text()='000DEPT - Head Office Branch']  timeout=10s
    Click Element    xpath=//span[@class='k-list-item-text' and text()='000DEPT - Head Office Branch']

scroll down
    Execute JavaScript    window.scrollBy(0, 1000)


Submit Employee Form
    Click Element    xpath=//*[@id="btnPostNew"]
    Wait Until Element Is Visible    id=SaveOnlyProcess    timeout=10s
    Click Element    id=SaveOnlyProcess
    Wait Until Element Is Visible    id=ProcessTransaction    timeout=10s
    Click Element    id=ProcessTransaction

searching data
    Input Text    id=txtbxsearchField   ${LASTNAME}
    Wait Until Element Is Visible    id=searchField    timeout=10s
    Click Element    id=searchField

clicking delete icon for employees module
    Wait Until Element Is Visible    //input[@id='deleteCustom']    timeout=10s
    Wait Until Element Is Enabled    //input[@id='deleteCustom']    timeout=10s
    Scroll Element Into View         //input[@id='deleteCustom']
    Click Element                    //input[@id='deleteCustom']


Confirm No To Delete Data
    Wait Until Element Is Visible    xpath=//button[@id='no']    timeout=5s
    Click Button    xpath=//button[@id='no']


confirm yes to delete data
   Wait Until Element Is Visible    xpath=//button[@id='yes']    timeout=5s
   Click Button                     xpath=//button[@id='yes']



*** Keywords ***
Click Edit Confirm No
    Wait Until Element Is Visible    xpath=//button[@id='noBTL']    20s
    Wait Until Element Is Enabled    xpath=//button[@id='noBTL']    20s
    Scroll Element Into View         xpath=//button[@id='noBTL']
    Click Element                    xpath=//button[@id='noBTL']


    
   
editing account 
    Wait Until Element Is Visible    id=MiddleName    timeout=10s
    Input Text                      id=MiddleName     ${MIDNAME}
    Execute JavaScript    window.scrollBy(0, 1000)


CLICKING SAVE BUTTON FOR EMPLOYEE
    Wait Until Element Is Visible    id=btnSubmit    timeout=10s
    Wait Until Element Is Enabled    id=btnSubmit    timeout=10s
    Scroll Element Into View         id=btnSubmit
    Click Element                    id=btnSubmit

    
CLICKING FOR CONFIRMATION TO yes
    Wait Until Element Is Visible    id=yesBTL    timeout=10s
    Wait Until Element Is Enabled    id=yesBTL    timeout=10s
    Scroll Element Into View         id=yesBTL
    Click Element                    id=yesBTL
    Wait Until Element Is Visible    id=ok    timeout=10s
    Wait Until Element Is Enabled    id=ok    timeout=10s
    Scroll Element Into View         id=ok
    Click Element                    id=ok


CLICKING FOR CONFIRMATION TO no
    Wait Until Element Is Visible    id=yesBTL    timeout=10s
    Wait Until Element Is Enabled    id=yesBTL    timeout=10s
    Scroll Element Into View         id=yesBTL
    Click Element                    id=yesBTL
    Wait Until Element Is Visible    id=ok    timeout=10s
    Wait Until Element Is Enabled    id=ok    timeout=10s
    Scroll Element Into View         id=ok
    Click Element                    id=ok    

Navigate To account User
    Wait Until Page Contains Element    xpath=//*[@id="UserManagement"]/span/span[1]
    Mouse Over                          xpath=//*[@id="UserManagement"]/span/span[1]
    Wait Until Page Contains Element    xpath=//*[@id="USER"]/span/span[1]
    Mouse Over                          xpath=//*[@id="USER"]/span/span[1]
    Wait Until Page Contains Element    xpath=//span[@class='k-menu-link-text' and text()='USER ACCOUNT']
    Mouse Over                          xpath=//span[@class='k-menu-link-text' and text()='USER ACCOUNT']
    Click Element                       xpath=//span[@class='k-menu-link-text' and text()='USER ACCOUNT']
click add icon for useraccount
  Wait Until Element Is Visible    xpath=//input[contains(@class, 'buttonAdd')]    10s
  Click Element                    xpath=//input[contains(@class, 'buttonAdd')]


select employee
    Wait Until Element Is Visible    id=AddPerson    10s
    Click Element                    id=AddPerson
    

click save button
   Wait Until Element Is Visible    xpath=//*[@id="btnPostNew"]
   Click Element    xpath=//*[@id="btnPostNew"]
click save and Process
    Wait Until Element Is Visible    id=SaveAndSubmitProcess    10s
    Click Element                    id=SaveAndSubmitProcess

click procces to create User
    Wait Until Element Is Visible    id=ProcessTransaction    10s
    Click Element                    id=ProcessTransaction

    
select role
    Wait Until Element Is Visible     xpath=//button[@aria-label='expand combobox' and @aria-controls='RoleVM_listbox']    20s
    Click Element                     xpath=//button[@aria-label='expand combobox' and @aria-controls='RoleVM_listbox']
    Wait Until Element Is Visible     xpath=//li[@role='option' and .//span[text()='2 - Administrator']]    20s
    Click Element    xpath=//li[@role='option' and .//span[text()='2 - Administrator']]


input UserName
    Wait Until Element Is Visible    xpath=//input[@id='UserID']   50s
    Input Text      xpath=//input[@id='UserID']      ${USERNAME2}


searching for account
    Wait Until Element Is Visible     xpath=//input[@id='txtbxsearchField']
    Input Text    xpath=//input[@id='txtbxsearchField']      ${USERNAME2}
    
    

Navigate To edit module
    Wait Until Page Contains Element    xpath=//*[@id="UserManagement"]/span/span[1]
    Mouse Over                          xpath=//*[@id="UserManagement"]/span/span[1]
    Wait Until Page Contains Element    xpath=//*[@id="USER"]/span/span[1]
    Mouse Over                          xpath=//*[@id="USER"]/span/span[1]
    Wait Until Page Contains Element    xpath=//span[text()='USER ACCOUNT']
    Mouse Over       xpath=//span[text()='USER ACCOUNT']
    Click Element    xpath=//span[text()='USER ACCOUNT']    


click search icon for edit module
    Wait Until Element Is Visible    //input[@id='searchField']    20s
    Click Element                    //input[@id='searchField']

click edit icon
    Wait Until Element Is Visible    xpath=//input[@id='editModule']    timeout=10s
    Wait Until Element Is Enabled    xpath=//input[@id='editModule']    timeout=10s
    Scroll Element Into View         xpath=//input[@id='editModule']
    Click Element                    xpath=//input[@id='editModule']


edit user account
    Wait Until Element Is Visible    //input[@id='UserID' and @name='UserID' and @type='text' and @value='admin5']
    Input Text    //input[@id='UserID' and @name='UserID' and @type='text' and @value='admin5']  ${USERNAME3}


click save button for ACCOUNT
    Wait Until Element Is Visible    //input[@id='btnSubmit']
    Click Button    //input[@id='btnSubmit']

click yes edit account
    Wait Until Element Is Visible    //button[@id='yesBTL']
    Click Button    //button[@id='yesBTL']

edit account
    Open Browser    ${URL}    edge
    Maximize Browser Window
    Login To System
    Navigate To edit module
    searching for account2
    click search icon for edit module
    click edit icon
    edit user
    scroll down
    click save button for ACCOUNT
    click yes edit account
    Close Browser

searching for account2
    Wait Until Element Is Visible     xpath=//input[@id='txtbxsearchField']     10s
    Input Text    xpath=//input[@id='txtbxsearchField']      ${USERNAME3}

click ok to edit 
    Wait Until Element Is Visible    //button[@id='ok']    10s
    Click Button    //button[@id='ok']

  


edit user 
    Wait Until Element Is Visible    //input[@id='UserID' and @name='UserID' and @value='admin999']
    Input Text   //input[@id='UserID' and @name='UserID' and @value='admin999']   ${USERNAME2}




create account
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
    Close The Browser


# Approval Workflow Submodule Module 
navigate approvalworkflow module
    Wait Until Page Contains Element    xpath=//*[@id="UserManagement"]/span/span[1]
    Mouse Over                          xpath=//*[@id="UserManagement"]/span/span[1]
    Wait Until Page Contains Element    //span[text()='USER POLICIES']    10s
    Mouse Over                          //span[text()='USER POLICIES']
    Wait Until Page Contains Element    //span[text()='APPROVAL WORKFLOW']    10s
    Mouse Over                          //span[text()='APPROVAL WORKFLOW']    
    Click Element                       //span[text()='APPROVAL WORKFLOW']

click add icon approval workflow
    Wait Until Element Is Enabled       //input[@id='btnCreate']    30s
    Wait Until Element Is Not Visible   //div[@class='k-loading-image']    30s
    Click Button                        //input[@id='btnCreate']

name in approvalworkflow
    Wait Until Element Is Visible       //input[@id='Name']    10s
    Input Text                          //input[@id='Name']    test

trasaction list approvalworkflow
    Wait Until Element Is Visible       //button[@aria-label='expand combobox']    50s
    Click Button                        //button[@aria-label='expand combobox']

transaction list selection
    Wait Until Element Is Enabled       //span[text()='5086 - WhiteList Customer']    50s 
    Scroll Element Into View            //span[text()='5086 - WhiteList Customer']
    Sleep                               0.5s
    Click Element                       //span[text()='5086 - WhiteList Customer']
    # Optional fallback:
    # Execute JavaScript    document.evaluate("//span[text()='5086 - WhiteList Customer']", document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue.click()

description approvalworkflow
    Wait Until Element Is Visible       //textarea[@id='Description']    10s
    Input Text                          //textarea[@id='Description']    testdata for description

check the selecall checkbox
    Wait Until Element Is Visible       //input[@id='chkSelectAll']
    Select Checkbox                     //input[@id='chkSelectAll']

select tab
    Wait Until Element Is Visible       xpath=//span[text()="Workstep Entry"]    60s
    Click Element                       xpath=//span[text()="Workstep Entry"]

add sequence
    Wait Until Element Is Visible       xpath=//button[text()="Add New Data"]
    Click Element                       xpath=//button[text()="Add New Data"]

name sequence
    Wait Until Element Is Visible       id=WorkstepName    10s
    Wait Until Element Is Enabled       id=WorkstepName    10s
    Input Text                          id=WorkstepName    Approver 1
select role approver1
    Wait Until Element Is Visible   id=WorkstepRoleCreateViewModels2__IsChecked
    Wait Until Element Is Enabled    id=WorkstepRoleCreateViewModels2__IsChecked
    Select Checkbox    id=WorkstepRoleCreateViewModels2__IsChecked

description for approver1
    Wait Until Element Is Visible    id=WorkstepDescription    10s
    Wait Until Element Is Enabled    id=WorkstepDescription    10s
    Input Text    id=WorkstepDescription    Approver 1
click save awf
    Wait Until Element Is Visible    id=Add
    Wait Until Element Is Visible    id=Add

    Click Element    id=Add

click ok to confirm
    Wait Until Element Is Visible    id=ok    10s
    Click Element                    id=ok


name sequence2
    Wait Until Element Is Visible       id=WorkstepName    10s
    Wait Until Element Is Enabled       id=WorkstepName    10s
    Input Text                          id=WorkstepName    Approver 2

description for approver2
    Wait Until Element Is Visible    id=WorkstepDescription    50s
    Wait Until Element Is Enabled    id=WorkstepDescription    50s
    Input Text    id=WorkstepDescription    Approver 2


select role approver2
    Wait Until Element Is Visible   id=WorkstepRoleCreateViewModels3__IsChecked
    Wait Until Element Is Enabled    id=WorkstepRoleCreateViewModels3__IsChecked
    Select Checkbox    id=WorkstepRoleCreateViewModels3__IsChecked

save icon for awf
    Wait Until Element Is Visible    id=btnSave    10s
    Wait Until Element Is Enabled    id=btnSave    10s
    
    Click Element                    id=btnSave
Close The Browser
    Close Browser

