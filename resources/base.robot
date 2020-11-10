*** Settings ***
Library   SeleniumLibrary


*** Variables ***
${URL}				https://www.ze.delivery
${BROWSER}		chrome


*** Keywords ***
Start Session
	Open Browser		${URL}		${BROWSER}
	Set Window Size		1920		1080


Screenshot And Close Session
	Capture Page Screenshot
	Close Browser


Click Enabled Element
	[Arguments]		${element}

	Wait Until Element Is Enabled   ${element}
  Click Element                   ${element}


Click Element By Index
	[Arguments]		${elements}		${index}=0

	Wait Until Element Is Enabled		${elements}
	${els}=		Get WebElements		${elements}
	Click Element		${els}[${index}]


Input Text Enabled Element
	[Arguments]		${element}		${text}

	Wait Until Element Is Enabled   ${element}
  Input Text											${element}		${text}


Get Element Text By Index
	[Arguments]		${elements}		${index}=0

	Wait Until Element Is Enabled		${elements}
	${els}=		Get WebElements		${elements}
	Get Text		${els}[${index}]


Should Message Contain Text
	[Arguments]		${element}		${expect_text_contain}

	Wait Until Element Is Visible   ${element}
	${message}=				Get Text			${element}
	Should Contain		${message}		${expect_text_contain}
