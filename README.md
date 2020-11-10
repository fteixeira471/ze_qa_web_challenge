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
> Para executar todos os testes com reports no próprio terminal:
robot tests

> Para executar um cenário de teste específico com reports no próprio terminal:
robot -i checkout_bag tests
robot -i not_available tests
robot -i address_not_exist tests
```

* **para fechar o ambiente virtual, execute o comando ```exit``` no terminal**
* **efetue passo 4 do tópico "Preparando o Ambiente" se desejar executar os testes novamente**



## **Screenshots e Report em HTML**
Ao final da execução do cenário de teste, é tirada uma screenshot da página como evidência. Para gerar um relatório em formato html, basta adicionar o parâmetro "```-d ./results```". Exemplos:

```robot -d ./results tests``` (_executará todos os testes e armazenará as screenshots e reports dentro da pasta results_)

```robot -d ./results -i address_not_exist tests``` (_executará todos os testes com a tag "address_not_exist" e armazenará as screenshots e reports dentro da pasta results_)

```
ze_qa_web_challenge
└── results
    ├── log.html
    ├── output.xml
    ├── report.html
    └── selenium-screenshot-X.png
```