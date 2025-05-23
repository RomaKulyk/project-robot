*** Settings ***
Library  SeleniumLibrary
Resource    ../Resources/PO/LandingPage.robot
Resource    ../Resources/PO/SearchResult.robot
Resource    ../Resources/PO/TopNav.robot
Resource    ../Resources/PO/Product.robot
Resource    ../Resources/PO/Cart.robot
Resource    ../Resources/PO/SignIn.robot
Resource    ../Resources/PO/LeftSideBar.robot

*** Keywords ***
Add Product to Cart
    Product.Add to Cart
    Cart.Verify Product Added

Begin Checkout
    Cart.Proceed to Checkout
    SignIn.Verify Page Loaded

Return To Main Page
    TopNav.Click Main Page Logo
    LandingPage.Verify Page Loaded

Go To Main Page
    LandingPage.Load
    LandingPage.Verify Page Loaded

Search for Products
    LandingPage.Load
    LandingPage.Verify Page Loaded
    TopNav.Search for Products
    SearchResult.Verify Search Completed

Select Product from Search Results
    SearchResult.Click Product link
    Product.Verify Page Loaded
    
Verify Results Page Contains Products
    SearchResult.Verify Product Count

