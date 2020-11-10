*** Settings ***
Resource    ../pages/home_page.robot

Test Setup      Start Session
Test Teardown   Screenshot And Close Session

*** Test Cases ***
Not available for customers under 18 years old
  [tags]    not_available
  Not 18 Years Old
  Should Message Contain Text   ${modal_alert}    Você precisa ter 18 anos ou mais para consumir bebidas alcoólicas.
  Element Should Be Enabled     ${btn_age_try_again}