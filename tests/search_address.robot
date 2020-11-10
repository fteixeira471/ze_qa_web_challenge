*** Settings ***
Documentation   Test Case que valida que não ofertaremos produtos em localidades não cobertas por nossa área de entrega.
...             Com essa validação, evitamos um possível descontentamento de um cliente
...             que seguiu todo o fluxo de compra e somente no final tem a informação
...             de que não poderemos efetuar a entrega do produto.

Resource    ../pages/home_page.robot

Test Setup      Start Session
Test Teardown   Screenshot And Close Session

*** Test Cases ***
Search address does not exist
  [tags]    address_not_exist
  Adult Customer
  Search Address                  nao_encontrado
  Should Message Contain Text     ${section_address_not_found}    Ops! Não encontramos seu endereço...
  Element Should Be Enabled       ${btn_map_indicator}