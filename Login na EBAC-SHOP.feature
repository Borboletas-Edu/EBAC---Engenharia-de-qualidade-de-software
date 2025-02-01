            # language: pt

            Funcionalidade: login na EBAC-SHOP
            Como cliente da EBAC-SHOP
            Quero fazer o login na plataforma
            Para visualizar meus pedidos

            Critérios de Aceitação:
            1 – Ao inserir dados válidos deve ser direcionado para a tela de checkout
            2 – Ao inserir um dos campos inválidos deve exibir uma mensagem de alerta “Usuário ou senha inválidos”

            Contexto:
            Dado que eu entre ná página de login da EBAC-SHOP

            Cenário: Dados válidos para login
            Quando eu inserir o email: 'eduardo.ebac@ebac.com.br'
            E a senha: 'senhaválida123'
            Então deve me direcionar para tela de checkout

            Esquema do Cenário: Dados inválidos para login
            Quando eu inserir o email: <email>
            E a senha: <senha>
            Então deve exibir uma mensagem de erro: 'Usuário ou senha inválidos'

            Exemplos:
            | email                     | senha            |
            | eduardo.ebac@ebac.com.br  | senhainválida321 |
            | inválido.ebac@ebac.com.br | senhainválida321 |
            | inválido.ebac@ebac.com.br | senhaválida123   |
