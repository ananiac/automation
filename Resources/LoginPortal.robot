*** Settings ***
Library     SeleniumLibrary
Library     Collections
Library    ../ExternalKeywords/vmskeyword.py
Variables    ../PageObjects/loginPageLocator.py

*** Keywords ***

    #Create webdriver    Chrome   executable_path=C:/Users/SachinGC/AppData/Local/Programs/Python/Python37-32/Scripts
    Open Browser    ${url}  ${browser}
    Maximize Browser Window

Login
    [Arguments]  ${UserName}  ${Password}
    clear element text  ${uname}
    input text    ${uname}    ${UserName}
    input text    ${upwd}    ${Password}
#    Clear Element Text  name:username
#    input text    name:username   ${UserName}
#    input text    name:password   ${Password}
#    click element   xpath://button[@value="Log In"]
    click element   ${loginbutton}
    #Wait Until Element Is Visible  xpath://div[@id="content"]/div/app-dashboard/div/div[1]/h2
    Wait Until Page Contains    Visitor Overview
    Capture Page Screenshot     .//Snapshots/tc1-1.png
    ${PageTitle}=   Get Title


Scrollto
    [Arguments]  ${elementtoscrollto}
    Execute Javascript    window.scrollTo(0,2000)
#    Scroll Element Into View    ${elementtoscrollto}
#    Wait Until Element is visible    ${elementtoscrollto}     timeout=5s
#    Set Focus To Element    ${elementtoscrollto}
#    Click Element    ${elementtoscrollto}*

LoginPortal
    OpenPage
    Login


ClickNewVisitor
    #sleep   2 seconds
    click Link      xpath://ul[@id='accordionSidebar']/li[2]/a
    Wait Until Page Contains    Visitor Details Capture
    Click Element      xpath://button[contains(.,'New Visitor')]
    Capture Page Screenshot     .//Snapshots/tc1-2.png
    Scrollto    (//input[@type='text'])[26]

ClickProfile
    Click Element   xpath://a[@id='userDropdown']
    Click Element   css:.dropdown-item:nth-child(1)


ClosePage
    close browser

Foldercreation
    [Arguments]    ${foldername}
    create_folder   ${foldername}





