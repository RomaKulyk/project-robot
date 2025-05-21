*** Settings ***
Library  SeleniumLibrary
Resource    ../Resources/PO/LandingPage.robot
Resource    ../Resources/PO/SearchResult.robot
Resource    ../Resources/PO/TopNav.robot
Resource    ../Resources/PO/Product.robot
Resource    ../Resources/PO/Cart.robot
Resource    ../Resources/PO/SignIn.robot

*** Keywords ***
Search for Products
    LandingPage.Load
    LandingPage.Verify Page Loaded
    TopNav.Search for Products
    SearchResult.Verify Search Completed

Verify Results Page Contains Products
    SearchResult.Verify Product Count

Select Product from Search Results
    SearchResult.Click Product link
    Product.Verify Page Loaded
    
Add Product to Cart
    Product.Add to Cart
    Cart.Verify Product Added
    
Begin Checkout
    Cart.Proceed to Checkout
    SignIn.Verify Page Loaded
