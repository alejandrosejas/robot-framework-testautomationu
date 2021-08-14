*** Settings ***


*** Variables ***


*** Test Cases ***
TC1: My Test Case
  ${nickName}=  Set Variable  Ale
  Print Profile  ${nickName}  Sejas  QE  alejandro1481
  ${nickName}=  Change Nickname  ${nickName}  Alejandro
  Print Profile  ${nickName}  Sejas  QE  alejandro1481

TC2: My Addition Test
  ${sum}=  Add  2  3
  Should be equal as integers  5  ${sum}

*** Keywords ***
Add
  [Arguments]  ${value1}  ${value2}
  ${value}=  Evaluate  ${value1} + ${value2}
  [Return]  ${value}

Change Nickname 
  [Arguments]  ${original}  ${new}
  [Return]    ${new}

My Log
   [Arguments]  ${text}
   Log to Console   This is the message: "${text}"
   Log to Console   This is the message: "${text}"
   Log to Console   This is the message: "${text}"
   
Print Profile
   [Arguments]  ${firstName}  ${lastName}  ${title}  ${twitterHandle}
   Log to Console   \n__Profile__
   Log to Console   First Name: "${firstName}"
   Log to Console   Last Name: "${lastName}"
   Log to Console   Title: "${title}"
   Log to Console   Twitter Handle: "${twitterHandle}"

