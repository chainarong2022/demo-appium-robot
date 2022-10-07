*** Settings ***
Library    AppiumLibrary

*** Keywords ***
ยอมรับเงื่อนไขต่างๆ
    Wait Until Element Is Visible     id=com.neversitup.piggipogo:id/tv_downloading_status
    Wait Until Page Does Not Contain Element   id=com.neversitup.piggipogo:id/tv_downloading_status
    Wait Until Element Is Visible    id=com.neversitup.piggipogo:id/btnTermAccept
    Click Element    id=com.neversitup.piggipogo:id/btnTermAccept