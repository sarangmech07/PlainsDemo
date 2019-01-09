*** Settings ***
Library  SeleniumLibrary
Library  Dialogs
Library  ImapLibrary
Library  ReadExcelFile.py
Resource  ReadEmail.robot

*** Variables ***
${USER_NAME} =  css=#username
${PASSWORD} =  css=#password
${LOGIN_BUTTON} =  css=#Login
${REMEMBER_ME} =  css=#rememberUn
${VERIFICATION} =  css=#emc
${Items_to_Approve} =  xpath=//*[@id="pendingApprovalCardHeader_268:0"]/span
${Application_Link_1} =  xpath=//*[@id="brandBand_1"]/div/div[1]/div/div/div/div/div[1]/div[1]/div[1]/div/article/div[2]/ul/li[1]/div[1]/h3/a
${Application_1} =  xpath=//*[@id="9:440;a"]/div/div/button
${Approval_Items} =  xpath=//*[@id="brandBand_1"]/div/div[1]/div/div/div[1]/h2/b
${Item_1} =  xpath=//*[@id="3:356;a"]
${Item1_Comments} =  xpath=//*[@id="input-4"]
${Item_2} =  xpath=//*[@id="24:356;a"]
${Item2_Comments} =  xpath=//*[@id="input-7"]
${Approve_Button} =  xpath=//*[@id="brandBand_1"]/div/div[1]/div/div/button[1]

*** Keywords ***
Navigate to Salesforce
    go to  ${URL_SFDC}
    wait until page contains element  ${USER_NAME}

Enter Credentials and submit
    #[Arguments]  ${Username}  ${Password}
    clear element text  ${USER_NAME}
    clear element text  ${PASSWORD}
    input text  ${USER_NAME}  sbaruah@sapient.com
    input text  ${PASSWORD}  Welcome123
    #input text  ${USER_NAME}  ${Username}[0]
    #input text  ${PASSWORD}  ${Password}[0]
    click element  ${REMEMBER_ME}
    click element  ${LOGIN_BUTTON}
    #sleep  60s
    pause execution  Execution paused until verification email arrives. Press OK to continue
    #run keyword if  ${VERIFICATION} == 'FAIL'  Verify Identity
    #wait until page contains element  ${Approval_Items}  timeout=20s

Verify Identity
    ReadEmail.Read Outlook email and verify identity
    #input text  ${VERIFICATION}  ${verfication_code}


Select Items
    set focus to element  ${Items_to_Approve}
    wait until page contains element  ${Items_to_Approve}  timeout=20s
    set focus to element  ${Application_Link_1}
    click element  ${Application_Link_1}
    #click element  ${Application_1}
    wait until page contains element  ${Approval_Items}  timeout=30s
    wait until page contains element  ${Item_1}  timeout=20s
    click element  ${Item_1}
    input text  ${Item1_Comments}  Approved
    click element  ${Item_2}
    input text  ${Item2_Comments}  Approved
    click element  ${Approve_Button}

