*** Settings ***
Library                QWeb
# Suitable libraries as per the use case
Library                String
Library                QVision


*** Variables ***
 ${browser}                chrome
 ${siteurl}                   https://tst.lindelink.com/login
 
   
*** Keywords ***

Setup Browser
    Open Browser       about:blank    ${browser}

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
  
  
Login
      HotKey                 ctrl    shift   N  
      QWeb.SwitchWindow      NEW 
      QWeb.GoTo              ${siteurl}
      
     
UserLogin
     QWeb.Appstate              login   
     QWeb.TypeSecret            //*[@id\="ShopLoginForm_Login"]             ${login1} 
     QWeb.TypeSecret            //*[@id\="ShopLoginForm_Password"]            ${pwd1}
     QWeb.ClickText             Login
    

    


 

   
