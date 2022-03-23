*** Settings ***
Documentation      This suite will handles all the test cases related to valid
...     credential test for orangehrm. Test case - TC_OH_2
Resource      ../Resource/Base/CommonFunctionality.resource
Resource    ../Resource/Pages/LoginPage.resource
Resource    ../Resource/Pages/MainPage.resource

Test Setup      Launch Browser
Test Teardown      Close Browser

*** Test Cases ***
Verify Valid Credential Test
    Input Text    id=user-name    standard_user
    Input Password    id=password    secret_sauce
    Click Element    id=login-button
    Page Should Contain   Products
    Capture Page Screenshot