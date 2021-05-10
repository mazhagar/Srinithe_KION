*** Settings ***
Resource          ../resources/keywords.robot
Suite Setup       Setup Browser
Suite Teardown    End suite



*** Test Cases ***

Verify Truck Sales details
[Documentation]            Verify the Truck Sales details 
  Login
  VerifyText          50013
  ClickText           50013
  VerifyText          ORDERS
  HoverText           ORDERS
  ClickText           Truck Sales
  VerifyText          Search for Truck Orders
  LogScreenshot
