*** Settings ***
Resource    ../pages/home_page.robot
Resource    ../pages/products_page.robot
Resource    ../pages/delivery_product_page.robot

Test Setup      Start Session
Test Teardown   Screenshot And Close Session

*** Test Cases ***
Add first product to checkout bag
  Set Address Available Delivery
  
  ${elements}=    Get WebElements   ${list_products_name}
  ${first_product_name}=    Get Text    ${elements}[0]

  Click Element By Index    ${list_products}
  Click Enabled Element     ${btn_add_product}

  Wait Until Element Is Visible   ${list_bag_products_name}

  ${elements}=    Get WebElements   ${list_bag_products_name}
  ${first_bag_product_name}=    Get Text    ${elements}[0]

  Should Be Equal   ${first_product_name}   ${first_bag_product_name}