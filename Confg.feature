Feature: Configuração de produto

  Como cliente da EBAC-SHOP
  Quero configurar meu produto de acordo com meu tamanho e gosto
  E escolher a quantidade
  Para depois inserir no carrinho

  Background:
    Given que o cliente está na página de produto

  Scenario: Seleções obrigatórias
    When o cliente tenta adicionar o produto ao carrinho sem escolher cor, tamanho ou quantidade
    Then deve ser exibida uma mensagem informando que todos os campos são obrigatórios

  Scenario: Limite de produtos por venda
    When o cliente tenta adicionar mais de 10 unidades do produto
    Then o sistema deve exibir uma mensagem informando que o limite por venda é 10 produtos

  Scenario: Limpar configurações
    Given que o cliente já selecionou cor, tamanho e quantidade
    When o cliente clica no botão "limpar"
    Then o sistema deve redefinir as seleções para o estado original