*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${accept_all_button_id}  L2AGLb
${search_input_xpath}   xpath://input[@type='text']
${nokia_wiki_page_xpath}    xpath://a[@href='https://en.wikipedia.org/wiki/Nokia']

*** Test Cases ***
WikiTest

    open browser    https://www.google.com/     chrome
    maximize browser window
    click element   id:${accept_all_button_id}
    input text  ${search_input_xpath}  Nokia wikipedia
    press keys   ${search_input_xpath}      RETURN
    page should contain element  ${nokia_wiki_page_xpath}
    click element   ${nokia_wiki_page_xpath}
    wait for condition	return (jQuery.active==0) && (document.readyState=='complete')
    close browser
*** Keywords ***
