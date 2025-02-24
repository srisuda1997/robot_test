*** Settings ***
Library         SeleniumLibrary
Variables    ../resources/config/config.yaml
Variables    ../resources/testdata/testdata.yaml
Suite Setup        Open Browser    ${url}    chrome    
Suite Teardown     Close Browser

*** Test Cases ***
step2 click Apply for membership button
    Maximize Browser Window 
    Wait Until Element Is Visible  xpath=//*[@id="__next"]/div[2]/div/div[1]/div[1]/div/div[2]/div[2]/div[2]/button[2]
    Click Element  xpath=//*[@id="__next"]/div[2]/div/div[1]/div[1]/div/div[2]/div[2]/div[2]/button[2]

step3
    input text    name= email   ${email}  
    input text    name=firstName    ${firstName}    
    input text    name=lastName    ${lastName}     
    input text    name=phoneNumber    ${phoneNumber}    
    input text    name=newPassword    ${newPassword}    
    input text    name=confirmPassword    ${confirmPassword}   
    Click Element    xpath=//input[@type='checkbox' and @name='consent']

step4-step5 click Apply for membership button 
    Wait Until Element Is Visible  xpath=//*[@id="__next"]/div[2]/div/div[2]/div/form/div/div[7]/button 
    Click Element     xpath=//*[@id="__next"]/div[2]/div/div[2]/div/form/div/div[7]/button
    Sleep    5s
