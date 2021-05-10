*** Settings ***
Library                QWeb
# Suitable libraries as per the use case
Library                String
Library                QVision


*** Variables ***
 ${BROWSER}                chrome
 ${Site_Base_URL}                  https://tst.lindelink.com/login
 
   
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
     
     GoTo              https://tst.lindelink.com/login
     TypeSecret            //*[@id\="ShopLoginForm_Login"]             ${login1} 
     TypeSecret            //*[@id\="ShopLoginForm_Password"]            ${pwd1}
     ClickText             Login
    

    


 

   
