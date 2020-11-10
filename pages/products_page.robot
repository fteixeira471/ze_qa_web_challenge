*** Settings ***
Resource    ../resources/base.robot


*** Variables ***
${list_products}            xpath://*[@id='product-card']
${list_products_name}       css:h3[class$='productTitle']
${list_bag_products_name}   css:aside[id='aside'] div[class$='productTitle']