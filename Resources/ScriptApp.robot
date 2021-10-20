*** Settings ***
Resource  Resources/PO/LandingPage.robot
Resource  Resources/PO/Login.robot
Resource  Resources/PO/ServicePage.robot
#Resource  Resources/PO/SearchResults.robot
#Resource  Resources/PO/Product.robot
#Resource  Resources/PO/Cart.robot

*** Keywords ***
ScriptApp.Enter to Landing Page
    LandingPage.Load
    LandingPage.Verify Page Loaded

ScriptApp.Login Web site
    Login.Perform login
    login.Verify login

ScriptApp.Navigate to Service Page
    ServicePage.Load and Verify
#    ServicePage.Select buttons


#ScriptApp.Assert actions

#Enter to Landing Page
#    LandingPage.Load
#    LandingPage.Verify Page Loaded
#    TopNav.Search for Products
#    SearchResults.Verify Search Completed
#
#Select Product from Search Results
#    SearchResults.Click Product link
#    Product.Verify Page Loaded
#
#Add Product to Cart
#    Product.Add to Cart
#    Cart.Verify Product Added
#
#Begin Checkout
#    Cart.Proceed to Checkout
#    SignIn.Verify Page Loaded