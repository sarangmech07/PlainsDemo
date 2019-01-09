*** Settings ***
Library  SeleniumLibrary
Library  ImapLibrary
#Library  ReadExcelFile.py
Resource  ./PO/PlainsSite.robot
Resource  ./PO/Email.robot
Resource  ./PO/Salesforce.robot
Resource  ./PO/ExcelDataManager.robot
Resource  ./PO/SendEmail.robot

*** Variables ***
${FILEPATH} =  C:\development\robot-scripts\Login Credentials.xlsx

*** Keywords ***
Launch Plains Site
    PlainsSite.Navigate To
    PlainsSite.Verify Page Loaded

Select Prospective Shipper
    PlainsSite.Select Shipper button

Enter Legal Entity of Shipper
    PlainsSite.Enter Shipper LE

Go to Next Page
    PlainsSite.Click Next
    PlainsSite.Verify Page 2 Loaded

Fill in all required fields
    PlainsSite.Enter Fields Values

#Send Email
#    SendEmail.Send email with outlook

Open Email
    Email.Open mail inbox

Open Link from Email
    Email.Open application link from email


    #log  @{Username}[0]
    #log  @{Password}[0]

Launch Salesforce
    #${Username} =  ExcelDataManager.Get UserName Data  ${FILEPATH}
    #${Password} =  ExcelDataManager.Get PassWord Data  ${FILEPATH}
    #log  @{Username}[0]
    #log  @{Password}[0]
    Salesforce.Navigate to Salesforce
    Salesforce.Enter Credentials and submit  #@{Username}[0]  @{Password}[0]
    Salesforce.Verify Identity

Select Items to be Approved
    Salesforce.Select Items