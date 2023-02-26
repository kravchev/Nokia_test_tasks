*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${accept_all_button_id}  L2AGLb
${search_input_xpath}   xpath://input[@type='text']
${nokia_wiki_page_xpath}    xpath://a[@href='https://en.wikipedia.org/wiki/Nokia']

*** Test Cases ***
WikiTest
    Open Browser    https://www.google.com/     chrome
    Maximize Browser Window
    Click Element   id:${accept_all_button_id}
    Input Text  ${search_input_xpath}  Nokia wikipedia
    Press Keys   ${search_input_xpath}      RETURN
    Page Should Contain Element  ${nokia_wiki_page_xpath}
    Click Element   ${nokia_wiki_page_xpath}
    Wait For Condition	return (jQuery.active==0) && (document.readyState=='complete')
    Close Browser
*** Keywords ***
