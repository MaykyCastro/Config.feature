Funcionalidade: Configuração de produto

Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Contexto:
Dado que o cliente está na página de produto

Cenário: Seleções obrigatórias
Quando o cliente tenta adicionar o produto ao carrinho sem escolher cor, tamanho ou quantidade
Então deve ser exibida uma mensagem informando que todos os campos são obrigatórios

Cenário: Limite de produtos por venda
Quando o cliente tenta adicionar mais de 10 unidades do produto
Então o sistema deve exibir uma mensagem informando que o limite por venda é 10 produtos

Cenário: Limpar configurações
Dado que o cliente já selecionou cor, tamanho e quantidade
Quando o cliente clica no botão "limpar"
Então o sistema deve redefinir as seleções para o estado original