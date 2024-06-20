            #language: pt

            Funcionalidade: Login na plataforma
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesse a página de autenticação do portal EBAC

            Cenário: Dados válidos
            Quando eu digitar o usuário "joao@ebac.com.br"
            E a senha "senha@123"
            Então deve exibir a tela de chekout com a mensagem "Bem vindo João"

            Esquema do Cenário: Autenticar multiplos usuários
            Quando eu digitar o <usuario>
            E a <senha>
            Então deve exibir a <pagcheckout>
            
            Exemplos:
            | usuario             | senha       | pagcheckout |
            | "joao@ebac.com.br"  | "senha@123" | "Olá João"  |
            | "maria@ebac.com.br" | "senha@123" | "Olá Maria" |
            | "jose@ebac.com.br"  | "senha@123" | "Olá José"  |

            Cenário: Usuário com usuário ou senha inválida
            Quando eu digitar o usuário "joao@ebac.com.br"
            E a senha "senhaerradfa23"
            Então deve exibir uma mensagem de alerta: "Usuário ou senha inválidos"