*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem

Test Teardown       Close Browser
*** Test Cases ***
TC1
    Append To Environment Variable    Path      ${EXECDIR}${/}driver${/}
    Open Browser    url=https://www.myntra.com      browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Mouse Over    xpath=//span[normalize-space()='Profile']
    Click Element    xpath=//a[@class='desktop-linkButton']
    Input Text    xpath=//input[@type='tel']    9998886665
    Click Element    xpath=//div[@class='submitBottomOption']
    Mouse Over      xpath=//div[normalize-space()='MEN']
    Click Element    xpath=//a[@class='desktop-categoryLink']
    Mouse Over    xpath=(//a[@class='desktop-main'])[2]
    Click Element   xpath=(//a[@class='desktop-categoryLink'])[65]
    Click Element    xpath=(//img[@title='Antheaa Black & Rust Orange Floral Print Tiered Midi Fit & Flare Dress with Ruffles'])[4]
    Click Element    xpath=//div[@class='pdp-add-to-bag pdp-button pdp-flex pdp-center      ']
    Mouse Over    xpath=(//a[@class='desktop-main'])[3]
    Click Element    xpath=(//a[contains(text(),'Jeans')])[3]
    Click Element    xpath=//div[@class='slick-slide slick-active slick-center']
    Mouse Over    xpath=(//div[@class='desktop-navLink'])[4]
    Click Element    xpath=//a[normalize-space()='Bath Towels']
    Click Element    xpath=//div[@class='product-sliderContainer']
    Mouse Over    xpath=(//a[@class='desktop-main'])[5]
    Click Element    xpath=//a[normalize-space()='Shampoo']
    Mouse Over    xpath=(//a[@class='desktop-main'])[6]


