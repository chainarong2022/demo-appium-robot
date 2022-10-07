*** Settings ***
Library    AppiumLibrary

*** Keywords ***
ยอมรับนโยบาย
    Wait Until Element Is Visible    id=com.neversitup.piggipogo:id/cb
    Click Element    id=com.neversitup.piggipogo:id/cb
    Wait Until Element Is Visible    id=com.neversitup.piggipogo:id/btnPolicyAccept
    Click Element    id=com.neversitup.piggipogo:id/btnPolicyAccept