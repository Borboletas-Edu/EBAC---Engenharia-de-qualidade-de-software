            # language: pt
            
            Funcionalidade: Configurar produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho, gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Critérios de Aceitação:
            1 – Seleções de cor, tamanho e quantidade devem ser obrigatórios
            2 – Deve permitir apenas 10 produtos por venda
            3 –Quando eu clicar no botão “limpar” deve voltar ao estado original

            Contexto:
            Dado que eu escolha um item do portal EBAC-SHOP

            Cenário: Configuração válida de produto
            Quando eu selecionar cor, tamanho e uma quantidade <= 10
            Então deve aparecer uma mensagem de confirmação: "Item adicionado ao carrinho com sucesso."

            Esquema do Cenário: Configuração inválida
            Quando eu selecionar <cor>, <tamanho> e <quantidade>
            Então deve aparecer uma mensagem de erro: <mensagem>
            Exemplos:
            | cor              | tamanho          | quantidade | mensagem                                              |
            | Blue             | m                | 11         | Quantidade não permitida. Maximo 10 peças por compra! |
            | Blue             | Nada selecionado | 9          | Escolha um tamanho!                                   |
            | Nada selecionado | m                | 9          | Escolha uma cor!                                      |
            | Nada selecionado | Nada selecionado | 11         | Quantidade não permitida. Maximo 10 peças por compra! |
            | Nada selecionado | Nada selecionado | 9          | Escolha uma cor e tamanho!                            |

Cenário: Limpar filtro de opções
Quando eu selecionar filtro de cor e/ou tamanho
E clicar na opção de limpar
Então deve desabilitar todas os filtos selecionados


