> 1. Exiba apenas nome, sobrenome, número de telefone e data de nascimento dos clientes:

> 2. Cujo campo telefone NÃO é NULL

> 3. Ordenar por data de nascimento de forma DESCENDENTE

Lembramos a estrutura da tabela se você não tem em mente:

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
      "sobrenome": {
        "type": "Text"
      },
      "email": {
        "type": "Text"
      },
      "telefone": {
        "type": "Text"
      },
      "celular": {
        "type": "Text"
      },
      "data_de_nascimento": {
        "type": "Datetime"
      },
      "id_produto_preferido" : {
        "type": "Integer"
      }
    }
  }'>
</div>

Para preguntar se algo não é nulo em SQL utilizamos **IS NOT NULL**
