Há uma última tabela para explorarmos, a tabela de vendas.

Esta tabela será aquela que liga os produtos com os clientes, sendo uma relação de **muitos para muitos (N:N)**. Isso ocorre porque um cliente pode comprar muitos produtos que por sua vez podem ser comprados por muitos clientes.

Desta forma, o nosso diagrama é assim:

<div
  class='mu-erd'
  data-entities='{
    "clientes": {
      "id": {
        "type": "Integer",
        "pk": true
      },
      "nome": {
        "type": "Text"
      },
      "sobrenome" : {
        "type": "Text"
      }
    },
    "vendas": {
      "id": {
        "type": "Integer",
        "pk": true
      },
      "id_cliente" : {
        "type": "Integer",
        "fk": {
          "to": { "entity": "clientes", "column": "id" },
          "type": "many_to_one"
        }
      },
      "id_produto" : {
        "type": "Integer",
        "fk": {
          "to": { "entity": "productos", "column": "id" },
          "type": "many_to_one"
        }
      }
    },
    "produtos": {
      "id": {
        "type": "Integer",
        "pk": true
      },
      "nome": {
        "type": "Text"
      },
      "modelo": {
        "type": "Text"
      },
      "descricao": {
        "type": "Text"
      },
      "preco": {
        "type": "Real"
      },
      "pontuacao": {
        "type": "Real"
      },
      "id_categoria" : {
        "type": "Integer"
      },
      "id_marca" : {
        "type": "Integer"
      }
    }
  }'>
</div>

Para este último exercício desejamos ua consulta que explore as 3 tabelas!!!

Para isso, é importante esclarecer no **WHERE** onde estão os relacionamentos que juntam essas tabelas para trazer os dados realmente relevantes. 

Podemos pensar que: na tabela **produto** temos o campo **id** que se relaciona com o campo **id_produto** da tabela **vendas** e na tabela clientes temos o campo **id** que se relaciona com o campo **id_cliente** da tabelas **vendas** 

Diante disso, queremos uma consulta que nos permita visualizar os clientes e quais produtos eles compraram.

O resultado da consulta deverá exibir apenas o nome e sobrenome do cliente e o nome do produto.
