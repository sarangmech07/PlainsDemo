*** Settings ***
Library  ReadExcelFile.py

*** Variables ***
${FILENAME} =  Login Credentials.xlsx

*** Keywords ***
Get UserName Data
    [Arguments]  ${FILENAME}
    ${DATA} =  read_UserNames_SFDC  ${FILENAME}
    [Return]  ${DATA}

Get PassWord Data
    [Arguments]  ${FILENAME}
    ${DATA} =  read_UserNames_SFDC  ${FILENAME}
    [Return]  ${DATA}