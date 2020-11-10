# **Projeto de Testes Automatizados**

Olá!

Este é um projeto para testes automatizados da página Web do ZéDelivery!

## **Tecnologias Utilizadas**
* **Python**
* **RobotFramework**
* **SeleniumLibrary**

## **Ferramentas Necessárias**
* **Python (versão 3.7.9)** - <https://realpython.com/installing-python>
* **Git Client** - <https://git-scm.com/book/pt-br/v2/Come%C3%A7ando-Instalando-o-Git>
* **Navegador Chrome** - <https://support.google.com/chrome/answer/95346?co=GENIE.Platform%3DDesktop&hl=pt-BR>

## **Preparando o Ambiente**
Após a instalação das **Ferramentas Necessárias**, abra o terminal e execute os comandos a seguir:
```
> 1. Clonar o projeto de automação web

git clone https://github.com/fteixeira471/ze_qa_web_challenge.git

------------------------------------------

> 2. Acessar a pasta do projeto

cd ze_qa_web_challenge

------------------------------------------
> 3. Instalar o **pipenv** para posterior criação de ambiente virtual e instalação das dependências do projeto

python3 -m pip install pipenv

------------------------------------------
> 4. Ativar ambiente virtual

python3 -m pipenv shell

------------------------------------------
> 5. Instalar dependências

pipenv install

------------------------------------------
> 6. Instalar chromedriver

webdrivermanager chrome

```

## **Executando a Automação**
Ainda no terminal e dentro da pasta raiz do projeto (_ze_qa_web_challenge_):
```
> Para executar todos os testes:
robot -d ./results tests

> Para executar um cenário de teste específico:
robot -d ./results -i checkout_bag tests
robot -d ./results -i not_available tests
robot -d ./results -i address_not_exist tests
```

* **para fechar o ambiente virtual, execute o comando ```exit``` no terminal**
* **efetue passo 4 do tópico "Preparando o Ambiente" se desejar executar os testes novamente**



## **Organização das Screenshots e Reports**
Em toda a execução dos testes são gerados relatórios tanto no terminal quanto em arquivos html/xml. Para manter a organização desses arquivos e não poluir a pasta raiz do projeto, é importante informar o parâmetro "```-d ./results```" (_conforme os exemplos no tópico acima_). Deste modo, as evidências serão armazenadas conforme a estrutura abaixo:
```
ze_qa_web_challenge
└── results
    ├── log.html
    ├── output.xml
    ├── report.html
    └── selenium-screenshot-X.png
```