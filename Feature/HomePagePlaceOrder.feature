#Gherkin
@homePagePlaceOrder
Feature: HomePagePlaceOrder

@TotalAndSubTotal
Scenario: Checkout Total and Sub-Total Condition
Given User is on Home Page
When User clicks on Shop Menu
And User clicks on Home Menu Button
Then Check home page has three arrivals
And Click on image in arrivals
Then Test page is navigating to next page
And Click on add to basket button
And User click on view basket to view item with price
Then Click on item link to proceed to checkout page
And User can find the total and subtotal value
Then Check total greater than subtotal because taxes added in subtotal
Then Close the browser

@ProceedToCheckout
Scenario: Proceed to checkout button
Given User is on Home Page
When User clicks on Shop Menu
And User clicks on Home Menu Button
Then Check home page has three arrivals
And Click on image in arrivals
Then Test page is navigating to next page
And Click on add to basket button
And User click on view basket to view item with price
Then Click on item link to proceed to checkout page
And User can find the total and subtotal value
Then Check total greater than subtotal because taxes added in subtotal
And Click on proceed to checkout button
Then Close the browser

@Billingdetails
Scenario Outline: Fill details in billing details and opt any payment method
Given User is on Home Page
When User clicks on Shop Menu
And User clicks on Home Menu Button
Then Check home page has three arrivals
And Click on image in arrivals
Then Test page is navigating to next page
And Click on add to basket button
And User click on view basket to view item with price
Then Click on item link to proceed to checkout page
And User can find the total and subtotal value
Then Check total greater than subtotal because taxes added in subtotal
And Click on proceed to checkout button
Then User can Fill details in billing details as <FirstName> and <LastName> and <CompanyName> and <EmailAdd> and <Phone> and <Address> and <City> and <State> and <ZIP> and opt any <paymentMethod>
Then Close the browser

Examples:
| FirstName | LastName   | CompanyName | EmailAdd     | Phone | Address      | City | State       | ZIP    | paymentMethod |
| Ayush     | D          | CG          | Ad@gmail.com | 9021  | Sasane Nagar | Pune | Maharashtra | 411028 | cod           |

@PlaceOrder
Scenario Outline: Click on place order button to complete process
Given User is on Home Page
When User clicks on Shop Menu
And User clicks on Home Menu Button
Then Check home page has three arrivals
And Click on image in arrivals
Then Test page is navigating to next page
And Click on add to basket button
And User click on view basket to view item with price
Then Click on item link to proceed to checkout page
And User can find the total and subtotal value
Then Check total greater than subtotal because taxes added in subtotal
And Click on proceed to checkout button
Then User can Fill details in billing details as <FirstName> and <LastName> and <CompanyName> and <EmailAdd> and <Phone> and <Address> and <City> and <State> and <ZIP> and opt any <paymentMethod>
And Click on place order button to complete process
When Page navigates to order confirmation page
Then Close the browser

Examples:
| FirstName | LastName   | CompanyName | EmailAdd     | Phone | Address      | City | State       | ZIP    | paymentMethod |
| Ayush     | D          | CG          | Ad@gmail.com | 9021  | Sasane Nagar | Pune | Maharashtra | 411028 | cod           |
