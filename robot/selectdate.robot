*** Settings ***
Library    AppiumLibrary

*** Keywords ***
กดเลือกวันที่การทำ Transaction
    Wait Until Page Does Not Contain Element  id=com.neversitup.piggipogo:id/done
    Wait Until Element Is Visible  id=com.neversitup.piggipogo:id/layoutDate
    Click Element    id=com.neversitup.piggipogo:id/layoutDate
    Wait Until Element Is Visible  id=android:id/date_picker_header_year
    Click Element    id=android:id/date_picker_header_year
    Wait Until Element Is Visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.ScrollView/android.widget.ViewAnimator/android.widget.ListView/android.widget.TextView[3]
    Scroll    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.ScrollView/android.widget.ViewAnimator/android.widget.ListView/android.widget.TextView[3]    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.ScrollView/android.widget.ViewAnimator/android.widget.ListView/android.widget.TextView[7]
    Wait Until Element Is Visible  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.ScrollView/android.widget.ViewAnimator/android.widget.ListView/android.widget.TextView[7]
    Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.ScrollView/android.widget.ViewAnimator/android.widget.ListView/android.widget.TextView[7]
    Wait Until Element Is Visible  id=android:id/next
    Click Element  id=android:id/next
    Wait Until Element Is Visible  xpath=//android.view.View[@content-desc="16 November 2019"]
    Click Element  xpath=//android.view.View[@content-desc="16 November 2019"]
    Wait Until Element Is Visible  id=android:id/button1
    Click Element    id=android:id/button1
    Wait Until Element Is Visible  id=com.neversitup.piggipogo:id/btn1
    Click Element  id=com.neversitup.piggipogo:id/btn1
    Wait Until Page Does Not Contain Element  id=com.neversitup.piggipogo:id/btn1
    Wait Until Element Is Visible  id=com.neversitup.piggipogo:id/layoutDate
    Click Element    id=com.neversitup.piggipogo:id/layoutDate
    Wait Until Element Is Visible  id=android:id/button1
    Click Element    id=android:id/button1