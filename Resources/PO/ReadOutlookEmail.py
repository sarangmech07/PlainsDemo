import win32com.client
import os
import re

def getoutlookmails(code):
    outlook=win32com.client.Dispatch("Outlook.Application").GetNameSpace("MAPI")
    inbox=outlook.GetDefaultFolder(6).items

    message=inbox.GetLast()
    message_prev = inbox.GetPrevious()
    subject=message.Subject
    body=message.body
    date=message.senton
    sender=message.Sender
    attachments=message.Attachments


    print("From : ", sender)
    print("Subject : ", subject)
    print("Date: ", date)
    print("No. of attachments : ", attachments.count)
    #print(body)

    code = re.findall(r"\D(\d{5})\D", body)
    print(code)
    return(code)

#getoutlookmails(code)

    #return getoutlookmails(body)



