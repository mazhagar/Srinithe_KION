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
  
  
Login
      HotKey                 ctrl    shift   N  
      QWeb.SwitchWindow      NEW 
      QWeb.GoTo              ${Url1}
      
     
UserLogin
     QWeb.Appstate              login   
     QWeb.TypeSecret            //*[@id\="ShopLoginForm_Login"]             ${login1} 
     QWeb.TypeSecret            //*[@id\="ShopLoginForm_Password"]            ${pwd1}
     QWeb.ClickText             Login
    

    


 

   
