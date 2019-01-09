*** Settings ***
Library  SeleniumLibrary
Library  Dialogs
Library  ReadOutlookEmail.py
Library  Collections
Library  Dialogs
#Library  ../CustomLib/ReadOutlookEmail.py
Resource  ../Tests/Plains_Demo.robot

*** Variables ***
${VERIFICATION} =  css=#emc
${VERIFY_BUTTON} =  css=#save
${BROWSER} =  chrome
${URL_SFDC} =  https://spde13-dev-ed.lightning.force.com/lightning/n/Mass_Approval

*** Keywords ***
Read Outlook email and verify identity
    ${verfication_code} =  getoutlookmails  code
    input text  ${VERIFICATION}  ${verfication_code}
    click element  ${VERIFY_BUTTON}
    sleep  20s
    #Actions().sendKeys(Keys.ESCAPE).build().perform()
    #Execute Manual Step  Handle notification. Press OK to continue
    #Chrome With Preferences
    #click element  xpath=//*[@id="popsubform"]/a/img
    #click element  xpath=//*[@id="tryLexDialogX"]
    #pause execution
    #Log Many  Body is ${body}




