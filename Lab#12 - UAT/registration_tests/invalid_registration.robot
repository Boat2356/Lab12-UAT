*** Settings ***
Resource    resource.robot

*** Test Cases ***
Open Event Registration Page
    Open Browser To Registration Page

Empty First Name        
    Input Lastname    Sodsai
    Input Organization    CS KKU
    Input Email    somsri@kkumail.com
    Input Phoneno    081-001-1234
    Submit Credentials
    Verify Empty First Name Error
    [Teardown]    Close Browser

Open Event Registration Page
    Open Browser To Registration Page

Empty Last Name
    Input Firstname    Somsri      
    Input Organization    CS KKU
    Input Email    somsri@kkumail.com
    Input Phoneno    081-001-1234
    Submit Credentials
    Verify Empty Last Name Error
    [Teardown]    Close Browser

Open Event Registration Page
    Open Browser To Registration Page

Empty First Name and Last Name        
    Input Organization    CS KKU
    Input Email    somsri@kkumail.com
    Input Phoneno    081-001-1234
    Submit Credentials
    Verify Empty First Name and Last Name
    [Teardown]    Close Browser

Open Event Registration Page
    Open Browser To Registration Page

Empty Email
    Input Firstname    Somsri
    Input Lastname    Sodsai
    Input Organization    CS KKU    
    Input Phoneno    081-001-1234
    Submit Credentials
    Verify Empty Email
    [Teardown]    Close Browser

Open Event Registration Page
    Open Browser To Registration Page

Empty Phone Number
    Input Firstname    Somsri
    Input Lastname    Sodsai
    Input Organization    CS KKU
    Input Email    somsri@kkumail.com    
    Submit Credentials
    Verify Empty Phone Number
    [Teardown]    Close Browser

Open Event Registration Page
    Open Browser To Registration Page
    
Invalid Phone Number
    Input Firstname    Somsri
    Input Lastname    Sodsai
    Input Organization    CS KKU
    Input Email    somsri@kkumail.com
    Input Phoneno    1234
    Submit Credentials
    Verify Invalid Phone Number
    [Teardown]    Close Browser