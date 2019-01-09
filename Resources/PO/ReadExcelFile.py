import pandas as pd
from pandas import ExcelFile

def read_UserNames_SFDC(filename):
    UserSheet = pd.read_excel('C:\development\robot-scripts\Login Credentials.xlsx',sheet_name='SFDC')
    Usernames = UserSheet['Username']
    return Usernames

def read_Passwords_SFDC(filename):
    UserSheet = pd.read_excel('C:\development\robot-scripts\Login Credentials.xlsx',sheet_name='SFDC')
    Passwords = UserSheet['Password']
    return Passwords

def read_UserNames_Email(filename):
    UserSheet = pd.read_excel('C:\development\robot-scripts\Login Credentials.xlsx',sheet_name='Email')
    Usernames = UserSheet['Username']
    return Usernames

def read_Passwords_Email(filename):
    UserSheet = pd.read_excel('C:\development\robot-scripts\Login Credentials.xlsx',sheet_name='Email')
    Passwords = UserSheet['Password']
    return Passwords