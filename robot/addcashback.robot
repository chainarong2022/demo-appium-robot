*** Settings ***
Library    AppiumLibrary

*** Keywords ***
ใส่ cashback
    Wait Until Element Is Visible  id=com.neversitup.piggipogo:id/txtCashback
    Click Element  id=com.neversitup.piggipogo:id/txtCashback
    Wait Until Element Is Visible  id=com.neversitup.piggipogo:id/cash_back_money
    Click Element  id=com.neversitup.piggipogo:id/cash_back_money
    Wait Until Element Is Visible  id=com.neversitup.piggipogo:id/cash_back_value
    Click Element    id=com.neversitup.piggipogo:id/cash_back_value
    Wait Until Element Is Visible  id=com.neversitup.piggipogo:id/key_two
    Click Element    id=com.neversitup.piggipogo:id/key_two
    Click Element    id=com.neversitup.piggipogo:id/key_two
    Wait Until Element Is Visible  id=com.neversitup.piggipogo:id/key_three
    Click Element    id=com.neversitup.piggipogo:id/key_three
    Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.LinearLayout[2]/android.widget.FrameLayout/android.widget.ImageView
    Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.LinearLayout[2]/android.widget.FrameLayout/android.widget.ImageView
    Wait Until Element Is Visible  id=com.neversitup.piggipogo:id/cash_back_return_this_month
    Click Element    id=com.neversitup.piggipogo:id/cash_back_return_this_month
    Wait Until Element Is Visible  id=com.neversitup.piggipogo:id/done
    Click Element    id=com.neversitup.piggipogo:id/done