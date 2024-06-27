            #language: pt

            Funcionalidade: Configurar produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            Para depois inserir no carrinho

            Contexto:
            Dado que eu acesse a pagina do produto

            Cenário: Seleção de cor, tamanho e quantidade obrigatórios
            Quando eu deixar de selecionar a "cor" ou "quantidade" ou "ttamanho"
            Então deve exibir a mensagem "É obrigatório selecionar o tamanho, cor e quantidade do produto"

            Cenário: Permitir apenas 10 produtos por venda
            Quando  eu selecionar "15 produtos"
            Então deve aparecer a mensagem "Só é permitido apenas 10 produtos por venda"

            Esquema do Cenário: Permitir até 10 produtos
            Quando eu selecionar <quantidadeprodutos>
            Então deve exibir a <mensagem>

            Exemplos:
            | quantidadeprodutos | mensagem                                      |
            | "5 produtos"       | "Venda realizada com sucesso"                 |
            | "20 produtos"      | "Só é permitido apenas 10 produtos por venda" |

            Cenário: Clicar no botão "limpar" voltar ao estado original
            Quando eu clicar no botão "limpar"
            Então a pagina deve voltar ao estado original
            