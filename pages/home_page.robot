*** Settings ***
Resource    ../resources/base.robot


*** Variables ***
${btn_age_no}                   id:age-gate-button-no
${btn_age_yes}                  id:age-gate-button-yes
${btn_age_try_again}            id:age-gate-button-try-again
${modal_alert}                  css:div[class*='-modal-modal']
${input_fake_address_search}    id:fake-address-search-input
${input_address_search}         id:address-search-input-address
${section_address_not_found}    id:address-not-found
${btn_map_indicator}            id:address-not-found-button-map-indicator
${list_first_address}           xpath://*[@itemid='google-address'][1]
${input_address_number}         id:address-details-input-number
${check_not_complement}         id:address-details-checkbox-without-complement
${btn_address_continue}         id:address-details-button-continue
${spinner_loading}              id:loading-screen


*** Keywords ***
Not 18 Years Old
  Click Enabled Element   ${btn_age_no}


Adult Customer
  Click Enabled Element   ${btn_age_yes}


Search Address
  [Arguments]   ${address}

  Click Enabled Element         ${input_fake_address_search}
  Input Text Enabled Element    ${input_address_search}   ${address}


Set Address Available Delivery
  Adult Customer
  Search Address                      Avenida Paulista
  Click Enabled Element               ${list_first_address}
  Input Text Enabled Element          ${input_address_number}   1000
  Click Enabled Element               ${check_not_complement}
  Click Enabled Element               ${btn_address_continue}
  Wait Until Element Is Not Visible   ${spinner_loading}        15
