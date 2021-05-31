***settings***
Documentation     Learn RobotFrameWork
Library     SeleniumLibrary
Library     Collections
Resource    ../Resources/LoginPortal.robot
Default Tags    Sanity
Force Tags     Regression
Library    ../ExternalKeywords/vmskeyword.py


#*** variables ***
#${browser}  chrome
#${url}  http://vmsdev.innovatily.com/admin

*** test cases ***
usingExternalKeyword
    Foldercreation  vigilents
    delete_folder   vigilent


varaibleandlist
    [Tags]      Smoke
    ${var1}=  set variable  variabaletest
    log to console  ${var1}
    #list
    @{list1}  create list   item1  1    2   item4   item5
    ${list1_length}  get length     ${list1}
    log to console  ${list1_length}
    ${list1_item}   get from list   ${list1}    0
    log to console  ${list1_item}
    FOR   ${item}    IN     ${list1}
        log to console  ${item}
    END

keywordtest
    ${keywt}  set variable  log to console
    Run Keyword     ${keywt}    this is what will be printed
    #run keyword with condition
    ${keyvalue}=     set variable    YES
    Run Keyword If    '${keyvalue}'=='YES'  log to console      vlaue found
    Run Keyword If    '${keyvalue}'=='NO'  log to console      vlaue not found

TimeoutAndSpeed
    Set Selenium Speed      2 seconds
#   Set Selenium Timeout 20 seconds
#   Set Selenium Implicit Wait  20 seconds





