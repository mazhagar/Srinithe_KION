*** Settings ***
Library                QWeb
# Suitable libraries as per the use case
Library                String
Library                QVision


*** Variables ***
 ${BROWSER}                 chrome
 ${Url1}                   https://tst.lindelink.com/login
 


   
*** Keywords ***

Setup Browser
    Open Browser       about:blank    ${BROWSER}

End suite
     Close All Browsers

Appstate
     [Documentation]    AppState handler
     [Arguments]        ${state}
     ${state}=          Convert To Lowercase    ${state}
     Run Keyword If     '${state}' == 'login'
     ...                Login
     Run Keyword If     '${state}' == 'userlogin'
	...                UserLogin
   # Run Keyword If       '${state}' ==  'searchorder'
    ...                SearchOrder
  
Login
      HotKey                 ctrl    shift   N  
      QWeb.SwitchWindow      NEW 
      QWeb.GoTo              ${Url1}
      
     
UserLogin
     QWeb.Appstate              login
     #QWeb.VerifyText            Login
     #QWeb.ClickText             Login   
     QWeb.TypeSecret            //*[@id\="ShopLoginForm_Login"]             ${login1} 
     QWeb.TypeSecret            //*[@id\="ShopLoginForm_Password"]            ${pwd1}
     QWeb.ClickText             Login
     #QWeb.ClickElement         //*[@id\="header"]/div[2]/a

#Checkout
    #QWeb.ClickText             Proceed To Checkout
    #QWeb.VerifyText            Cash on Delivery
    #QWeb.ClickText             Cash on Delivery
    #QWeb.ClickCheckbox         Terms and Conditions       on     
    #QWeb.ClickText             Place Order Now 


    


 

   
