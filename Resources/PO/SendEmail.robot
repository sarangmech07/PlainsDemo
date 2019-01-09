*** Settings ***
Library  mailer.py
#Library  Collections
#Library  .../CustomLib/mailer.py

#*** Keywords ***

*** Test Cases ***
Send email with outlook
    sendmail  sarbarua@publicisgroupe.net  sarang.mech07@gmail.com  'Subject'  'Email Body'


