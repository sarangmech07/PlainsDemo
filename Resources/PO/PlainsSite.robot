*** Settings ***
Library  SeleniumLibrary
Library  Dialogs

*** Variables ***
#${PROSPECT_SHIPPER_BUTTON} =  id=input-1-radio-0
${PROSPECT_SHIPPER_BUTTON} =  xpath=//*[@id="lightning"]/div/div[2]/div[2]/div[2]/lightning-radio-group/fieldset/div/span[1]/label/span[1]
${SHIPPER_LEGAL_ENTITY} =  xpath=//*[@id="30:2;a"]
${APPLICATION_PAGE_TEXT} =  xpath=//*[@id="lightning"]/div/div[2]/div[1]
${NEXT_BUTTON} =  xpath=//*[@id="lightning"]/div/div[2]/div[3]/div/div/button
${SECTION1_TEXT} =  xpath=//*[@id="lightning"]/div/div/div[1]
${DATE_OF_INCORPORATION} =  xpath=//*[@id="141:2;a"]
${DATE_TODAY} =  xpath=//*[@id="31:0"]/div/div[2]/table/tbody/tr[4]/td[2]/span
${DUNS} =  xpath=//*[@id="92:2;a"]
${STOCK_SYMBOL} =  xpath=//*[@id="160:2;a"]
${TIN_NUMBER} =  xpath=//*[@id="263:2;a"]
${OWNER_CONTACT_NAME} =  xpath=//*[@id="380:2;a"]
${OWNER_CONTACT_EMAIL} =  xpath=//*[@id="408:2;a"]
${REQUESTOR_CONTACT_NAME} =  xpath=//*[@id="445:2;a"]
${REQUESTOR_CONTACT_EMAIL} =  xpath=//*[@id="473:2;a"]
${NEXT_BUTTON_PAGE2} =  xpath=//*[@id="lightning"]/div/div/div[7]/div/div/button[2]
${PAGE3_HEADER_TEXT} =  xpath=//*[@id="lightning"]/div/div[1]/div/h1/strong
${SIGNATURE} =  xpath=//*[@id="input-3"]
${PRINTED_NAME} =  xpath=//*[@id="input-4"]
${TITLE} =  xpath=//*[@id="input-5"]
${DATE} =  xpath=//*[@id="input-7"]
${DATE_TODAY1} =  xpath=//*[@id="lightning"]/div/div[5]/div/table/tr[4]/td[3]/lightning-input/lightning-datepicker/div/div/lightning-calendar/div/table/tbody/tr[4]/td[2]/span
#${RECAPTCHA_CHECKBOX} =  xpath=//*[@id="recaptcha-anchor"]/div[5]
${RECAPTCHA_CHECKBOX} =  css=#recaptcha-anchor > div.recaptcha-checkbox-checkmark
${SAVE_CONTINUE} =  xpath=//*[@id="lightning"]/div/div[10]/div/div/button[2]  #//*[@id="lightning"]/div/div[10]/div/div/button[2]
${PAGE4_HEADER_TEXT} =  xpath=//*[@id="lightning"]/div/div/div[1]
#${CRUDE_TYPE} =  xpath=//*[@id="28:149;a"]/div/a
${CRUDE_TYPE} =  css=div#28:149;a
${CRUDE_TYPE_LIST} =  xpath=//*[@id="40:149;a"]/div/ul/li[2]/a
${ESTIMATED_VOLUME} =  xpath=//*[@id="51:149;a"]
${ORIGIN} =  xpath=//*[@id="83:149;a"]/div/a
${ORIGIN_LIST} =  xpath=//*[@id="95:149;a"]/div/ul/li[2]/a
${DESTINATION} =  xpath=//*[@id="127:149;a"]/div/a
${DESTINATION_LIST} =  xpath=//*[@id="139:149;a"]/div/ul/li[3]/a
${SAVE} =  xpath=//*[@id="lightning"]/div/div/div[8]/div/div/button[2]
${START_DATE} =  xpath=//*[@id="150:149;a"]
${DATE_TODAY2} =  xpath=//*[@id="lightning"]/div/div[5]/div/table/tr[4]/td[3]/lightning-input/lightning-datepicker/div/div/lightning-calendar/div/table/tbody/tr[4]/td[2]/span
${FINAL_PAGE_MSG} =  xpath=//*[@id="lightning"]/div/div/div

*** Keywords ***
Navigate To
    go to  ${URL_PLAINS}

Verify Page Loaded
    wait until page contains element  ${APPLICATION_PAGE_TEXT}  timeout=15s

Select Shipper button
    #click element  input-1-radio-0
    click element  ${PROSPECT_SHIPPER_BUTTON}

Enter Shipper LE
    input text  ${SHIPPER_LEGAL_ENTITY}  ABC Shipping Company

Click Next
    click element  ${NEXT_BUTTON}

Verify Page 2 Loaded
    wait until page contains element  ${SECTION1_TEXT}  timeout=10s

Enter Fields Values
    click element  ${DATE_OF_INCORPORATION}
    click element  ${DATE_TODAY}
    input text  ${DUNS}  1234
    input text  ${STOCK_SYMBOL}  ASN
    input text  ${TIN_NUMBER}  5678
    input text  ${OWNER_CONTACT_NAME}  Sarang
    input text  ${OWNER_CONTACT_EMAIL}  sbaruah@sapient.com
    input text  ${REQUESTOR_CONTACT_NAME}  Sarang
    input text  ${REQUESTOR_CONTACT_EMAIL}  sbaruah@sapient.com
    click element  ${NEXT_BUTTON_PAGE2}
    wait until page contains element  ${PAGE3_HEADER_TEXT}  timeout=10s
    scroll element into view  ${SIGNATURE}
    #select frame  ${SIGNATURE}
    input text  ${SIGNATURE}  Sarang
    scroll element into view  ${PRINTED_NAME}
    input text  ${PRINTED_NAME}  Sarang
    scroll element into view  ${TITLE}
    input text  ${TITLE}  Mr
    scroll element into view  ${DATE}
    click element  ${DATE}
    click element  ${DATE_TODAY1}
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    #pause execution  Please select the Recaptcha checkbox manually. Pres OK to continue
    #wait until element is visible  ${RECAPTCHA_CHECKBOX}
    #scroll element into view  ${RECAPTCHA_CHECKBOX}
    #set focus to element  ${RECAPTCHA_CHECKBOX}
    #click element  ${RECAPTCHA_CHECKBOX}
    #wait until element is enabled  ${SAVE_CONTINUE}  timeout=10s
    click element  ${SAVE_CONTINUE}

