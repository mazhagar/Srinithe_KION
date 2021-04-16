*** Settings ***
Resource          ../resources/keywords.robot
Suite Setup       Setup Browser
Suite Teardown    End suite



*** Test Cases ***

Verify Truck Sales details
[Documentation]            Verify the Truck Sales details 
  QWeb.Appstate            Login 
  QWeb.VerifyText          50013
  QWeb.ClickText           50013
  QWeb.VerifyText          ORDERS
  QWeb.HoverText           ORDERS
  QWeb.ClickText           Truck Sales
  QWeb.VerifyText          Search for Truck Orders
  QWeb.LogScreenshot
