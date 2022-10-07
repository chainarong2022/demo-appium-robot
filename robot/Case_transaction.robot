*** Settings ***
Library    AppiumLibrary
Resource    C:\\Doc\\piggipo\\robot\\login_gmail.robot
Resource    C:\\Doc\\piggipo\\robot\\termaccept.robot
Resource    C:\\Doc\\piggipo\\robot\\policy.robot
Resource    C:\\Doc\\piggipo\\robot\\allow_permission.robot
Resource    C:\\Doc\\piggipo\\robot\\open_app.robot
Resource    C:\\Doc\\piggipo\\robot\\select_credit.robot
Resource    C:\\Doc\\piggipo\\robot\\input5000.robot
Resource    C:\\Doc\\piggipo\\robot\\addcashback.robot
Resource    C:\\Doc\\piggipo\\robot\\selectdate.robot
Resource    C:\\Doc\\piggipo\\robot\\delete.robot
*** Variables ***
${REMOTE_URL}   http://127.0.0.1:4723/wd/hub
${platformName}    Android
${base}     C:\\Doc\\piggipo\\piggipo APK//
${appium:app}    ${base}Piggipo GO_1.2.21_apkcombo.com.apk
${appium:deviceName}    R58T61LYNFF
${appium:automationName}    UiAutomator2
${appium:ensureWebviewsHavePages}    True
${appium:nativeWebScreenshot}    True
${appium:newCommandTimeout}    3600
${appium:connectHardwareKeyboard}    True



*** Test Cases ***
test resource
เลือกสมัครด้วย Gmail
    login_gmail.เลือกสมัครด้วย Gmail

ลูกค้าเข้ามาสมัคร ID ใหม่ยังไม่เคย login มาก่อน
    เปิด app ขึ้นมาใหม่
    เลือกสมัครด้วย Gmail
    ยอมรับเงื่อนไขต่างๆ
    ยอมรับนโยบาย
    Allow permission
    ผู้ใช้งานสามารถเข้าเเอพได้
    กดเลือก Credit
    กดเพิ่ม Transection
    กดใส่จำนวนเงิน 5000
    กดปุ่มเพื่อเข้าไปเข้าหน้าเลือกใช้ Category
    กดเลือกเเถบ BILL PAYMENT
    กดเลือก Category อันเเรก
    ใส่ cashback
    กดเลือกวันที่การทำ Transaction
    กดติ๊กถูก
    กดเลือก Transaction ที่พึ่งสร้างไปจะอยู่อันที่ 2
    Delete Transaction

*** Keywords ***
เปิด app ขึ้นมาใหม่
    Open Application    ${REMOTE_URL}   
    ...  platformName=${platformName}  
    ...  appium:app=${appium:app}  
    ...  appium:deviceName=${appium:deviceName}  
    ...  appium:automationName=${appium:automationName}  
เลือกสมัครด้วย Gmail
    login_gmail.เลือกสมัครด้วย Gmail
ยอมรับเงื่อนไขต่างๆ
    termaccept.ยอมรับเงื่อนไขต่างๆ

ยอมรับนโยบาย
    Policy.ยอมรับนโยบาย

Allow permission
    allow_permission.Allow permission
ผู้ใช้งานสามารถเข้าเเอพได้
    open_app.ผู้ใช้งานสามารถเข้าเเอพได้
กดเลือก Credit
    select_credit.กดเลือก Credit
กดเพิ่ม Transection 
    Wait Until Element Is Visible    id=com.neversitup.piggipogo:id/report_add_transaction
    Click Element    id=com.neversitup.piggipogo:id/report_add_transaction
กดใส่จำนวนเงิน 5000
    input5000.กดใส่จำนวนเงิน 5000
กดปุ่มเพื่อเข้าไปเข้าหน้าเลือกใช้ Category
    Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.widget.LinearLayout[1]/android.widget.LinearLayout/android.widget.ImageView[2]
    Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.widget.LinearLayout[1]/android.widget.LinearLayout/android.widget.ImageView[2]
กดเลือกเเถบ BILL PAYMENT
    Wait Until Element Is Visible    accessibility_id=Bill payment
    Click Element    accessibility_id=Bill payment
กดเลือก Category อันเเรก
    Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[2]/android.widget.LinearLayout/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.GridView/android.widget.LinearLayout[1]/android.widget.FrameLayout/android.widget.ImageView
    Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[2]/android.widget.LinearLayout/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.GridView/android.widget.LinearLayout[1]/android.widget.FrameLayout/android.widget.ImageView
    Wait Until Page Does Not Contain Element   xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[2]/android.widget.LinearLayout/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup/android.widget.LinearLayout/android.widget.GridView/android.widget.LinearLayout[1]/android.widget.FrameLayout/android.widget.ImageView

ใส่ cashback
    addcashback.ใส่ cashback

กดเลือกวันที่การทำ Transaction
    selectdate.กดเลือกวันที่การทำ Transaction
    
กดติ๊กถูก
    Wait Until Element Is Visible    id=com.neversitup.piggipogo:id/imvApprove   
    Click Element    id=com.neversitup.piggipogo:id/imvApprove
กดเลือก Transaction ที่พึ่งสร้างไปจะอยู่อันที่ 2
    Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/androidx.viewpager.widget.ViewPager/android.view.ViewGroup/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout[2]/android.widget.LinearLayout/android.widget.RelativeLayout
    Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/androidx.viewpager.widget.ViewPager/android.view.ViewGroup/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout[2]/android.widget.LinearLayout/android.widget.RelativeLayout
Delete Transaction
    delete.Delete Transaction