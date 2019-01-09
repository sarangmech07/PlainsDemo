*** Settings ***
Documentation  This test suite handles submitting of application by a prospective shipper and its approval process
Resource  ../Resources/PlainsDemo.robot
Resource  ../Resources/Common.robot
Test Setup  Begin Web Test
Test Teardown  End Web Test

# robot -d results Tests/Plains_Demo.robot

*** Variables ***
${BROWSER} =  chrome
${URL_PLAINS} =  https://sapient-poc-developer-edition.na73.force.com/plainspoc/
${URL_SFDC} =  https://spde13-dev-ed.lightning.force.com/lightning/page/home
${FILEPATH} =  C:\\development\\robot-scripts\\Login Credentials.xlsx


*** Test Cases ***
#Launch Plains site for application submission
    #[Documentation]  Test1 - Plains site for application submission should be launched
    #PlainsDemo.Launch Plains Site
    #sleep  5s
    #PlainsDemo.Select Prospective Shipper

Fill in required details
    [Documentation]  Test2 - Required fields need to be filled in
    PlainsDemo.Launch Plains Site
    PlainsDemo.Select Prospective Shipper
    PlainsDemo.Enter Legal Entity of Shipper
    PlainsDemo.Go to Next Page
    PlainsDemo.Fill in all required fields

Launch Salesforce

#Launch Plains site for application submission
    #[Documentation]  Test1 - Plains site for application submission should be launched
    #PlainsDemo.Launch Plains Site
    #sleep  5s
    #PlainsDemo.Select Prospective Shipper

Fill in required details
    [Documentation]  Test2 - Required fields need to be filled in
    PlainsDemo.Launch Plains Site
    PlainsDemo.Select Prospective Shipper
    PlainsDemo.Enter Legal Entity of Shipper
    PlainsDemo.Go to Next Page
    #sleep  3s
    PlainsDemo.Fill in all required fields

    [Documentation]  Test3 - Approval/Rejection of application in Salesforce
    PlainsDemo.Launch Salesforce
    #PlainsDemo.Verify Identity
    PlainsDemo.Select Items to be Approved



