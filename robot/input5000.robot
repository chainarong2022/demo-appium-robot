*** Settings ***
Library    AppiumLibrary

*** Keywords ***
กดใส่จำนวนเงิน 5000
    Wait Until Element Is Visible    id=com.neversitup.piggipogo:id/key_five
    Click Element    id=com.neversitup.piggipogo:id/key_five
    Wait Until Element Is Visible    id=com.neversitup.piggipogo:id/key_zero
    Click Element    id=com.neversitup.piggipogo:id/key_zero
    Wait Until Element Is Visible    id=com.neversitup.piggipogo:id/key_zero
    Click Element    id=com.neversitup.piggipogo:id/key_zero
    Wait Until Element Is Visible    id=com.neversitup.piggipogo:id/key_zero
    Click Element    id=com.neversitup.piggipogo:id/key_zero
# กดปิดคีย์บอร์ด
    Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ImageView
    Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ImageView