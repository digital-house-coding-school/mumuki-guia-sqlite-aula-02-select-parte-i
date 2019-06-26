Iremos deixar o nosso sistema mais completo, observe:

<div
  class='mu-erd'
  data-entities='{
    "categorias": {
      "id": {
        "type": "Integer",
        "pk": true
      },
      "nome": {
        "type": "Text"
      },
      "id_categoria_pai" : {
        "type": "Integer"
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
        "type": "Integer",
        "fk": {
          "to": { "entity": "categorias", "column": "id" },
          "type": "many_to_one"
        }
      },
      "id_marca" : {
        "type": "Integer",
        "fk": {
          "to": { "entity": "marcas", "column": "id" },
          "type": "many_to_one"
        }
      }
    },
    "marcas": {
      "id": {
        "type": "Integer",
        "pk": true
      },
      "nome": {
        "type": "Text"
      }
    }
  }'>
</div>

Como você verá, no esquema, a coluna `id_marca` refere-se a uma marca, enquanto `id_categoria` refere-se a uma categoria do produto.

Para este exercício:

> Faça uma consulta que exiba todos os dados de todos os produtos