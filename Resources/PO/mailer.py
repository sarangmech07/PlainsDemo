import smtplib
from email.mime.text import MIMEText

#smtp-mail.outlook.com

def sendmail(fromUser, toUser, subject, message):
    header = "Hello " + "\n\n"
    footer = "\n\n-wmcInternal"
    msg = MIMEText(header + message + footer)

    msg['Subject'] = subject
    msg['From'] = fromUser
    msg['To'] = toUser

    s = smtplib.SMTP(host='smtp.office365.com', port=587)
    s.sendmail(fromUser, [toUser], msg.as_string())
    s.quit()