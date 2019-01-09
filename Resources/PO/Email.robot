*** Settings ***
Library  SeleniumLibrary
Library  ImapLibrary

*** Variables ***
#https://outlook.office365.com/owa/publicisgroupe.net/
#http://imap-mail.outlook.com
#http://outlook.office365.com

*** Keywords ***
Open mail inbox
    Open Mailbox  server=http://outlook.office365.com  user=sarbarua  password=ddeviL01!  port=143
    set log level  VERBOSE

Open application link from email
    open link from email  3
