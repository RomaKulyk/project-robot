*** Settings ***
Resource    ../Resources/POCrm/AddCustomer.robot
Resource    ../Resources/POCrm/Customers.robot
Resource    ../Resources/POCrm/Home.robot
Resource    ../Resources/POCrm/LoggedOut.robot
Resource    ../Resources/POCrm/SignIn.robot
Resource    ../Resources/POCrm/TopNav.robot

*** Variables ***



*** Keywords ***
Go To "Home" Page
    Home.Navigate to
    Home.Vefify Page Loaded

Login With Valid Credentials
    [Arguments]    ${Email}    ${Password}
    TopNav.Click "Sign In" lInk
    SignIn.Vefify Page Loaded
    SignIn.Login With Valid Credentials    ${Email}    ${Password}
    Customers.Vefify Page Loaded

Add New Customer
    Customers.Click Add Customer Link
    AddCustomer.Vefify Page Loaded
    AddCustomer.Add New Customer
    Customers.Verify Customer Added Successfully

Sign Out
    TopNav.Click "Sign Out" lInk
    LoggedOut.Verify Page Loaded