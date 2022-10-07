*** Settings ***
Library    AppiumLibrary

*** Keywords ***
ผู้ใช้งานสามารถเข้าเเอพได้
    Wait Until Element Is Visible    id=com.neversitup.piggipogo:id/imvAds
    Click Element    id=com.neversitup.piggipogo:id/imvAds
    Wait Until Page Does Not Contain Element  id=com.neversitup.piggipogo:id/imvAds
    