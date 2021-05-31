***settings***
Documentation     Login to vmsdev
Resource    ../Resources/LoginPortal.robot
#Test Setup      LoginPortal    #excutes before each testcase
#Test Teardown   ClosePage
Default Tags    Sanity
Force Tags     Regression


*** test cases ***
[Setup]     LoginPortal

NewVisitor
    [Tags]      Smoke
    ClickNewVisitor

Profile
    ClickProfile

[Teardown]  ClosePage


#LoginGoogle
#    OpenPage    https:/www.google.com  chrome



