*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${SERVER}    localhost:7272
${BROWSER}    Firefox
${DELAY}    0
${REGISTRATION URL}    http://${SERVER}/Registration.html

*** Keywords ***
Open Browser To Registration Page
    Open Browser    ${REGISTRATION URL}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Registration Page Should Be Open

Registration Page Should Be Open
    Title Should Be    Event Registration

Go To Registration Page
    Go To    ${REGISTRATION URL}

Input Firstname
    [Arguments]    ${firstname}
    Input Text    firstname    ${firstname}

Input Lastname
    [Arguments]    ${lastname}
    Input Text    lastname    ${lastname}

Input Organization
    [Arguments]    ${organization}
    Input Text    organization    ${organization}

Input Email
    [Arguments]    ${email}
    Input Text    email    ${email}

Input Phoneno
    [Arguments]    ${phoneno}
    Input Text    phone    ${phoneno}

Submit Credentials
    Click Button    registerButton

Verify Registration Success
    Title Should Be    Success
    Page Should Contain    Success
    Page Should Contain    Thank you for participating in our event

Verify Empty First Name Error
    Page Should Contain    *Please enter your first name!!

Verify Empty Last Name Error
    Page Should Contain    *Please enter your last name!!

Verify Empty First Name and Last Name
    Page Should Contain    *Please enter your name!!

Verify Empty Email
    Page Should Contain    *Please enter your email!!

Verify Empty Phone Number
    Page Should Contain    *Please enter your phone number!!

Verify Invalid Phone Number
    Page Should Contain    Please enter a valid phone number, e.g., 081-234-5678, 081 234 5678, or 081.234.5678
