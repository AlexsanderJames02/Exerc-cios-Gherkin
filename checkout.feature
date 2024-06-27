            #language: pt

            Funcionalidade: Checkout
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu acesse a página de checkout

            Cenário: Todos os dados obrigatórios preenchidos
            Quando eu digitar o nome "Alexsander" e o sobrenome "James" e o país "Brasil" e o endereço "Rua Irajá 53" e a cidade "Jandira" e o CEP "06624-120" e o telefone "11 98663-8700" e o e-mail "felicianoalex402@gmail.com"
            Então deve finalizar a compra e aparecer a mensagem "Obrigado pela compra Alexsander"

            Esquema do Cenário: Multiplos dados obrigatórios preenchidos
            Quando eu digitar <nome> e <sobrenome> e <pais> e <endereco> e <cidade> e <cep> e <telefone> e <email>
            Então deve finalizar a compra e exibir a <mensagem>

            Exemplos:
            | nome         | sobrenome | pais     | endereco              | cidade      | cep         | telefone        | email                         | mensagem                          |
            | "Alexsander" | "James"   | "Brasil" | "Rua Irajá 53"        | "Jandira"   | "06624-120" | "11 98663-8700" | "felicianoalex402@gmail.com"  | "Obrigado pela compra Alexsander" |
            | "Tayna"      | "Sobral"  | "Brasil" | "Rua Prof Dirceu 197" | "São Paulo" | "05469-120" | "11 94618-8700" | "tayjuliasobral402@gmail.com" | "Obrigado pela compra Tayna"      |

Cenário: Email com formato invalido
Quando eu digitar o e-mail "@gmail.comfelicianoalex"
Então deve aparecer a mensagem "Formato de e-mail inválido"

Cenário: Campos obrigatórios vazios
Quando deixar de preencher algum campo obrigatório
Então deve aparecer a mensagem de alerta "Campos obrigatórios não preenchidos"