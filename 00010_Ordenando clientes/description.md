imentÓbserve uma tabela de clientes com a seguinte estrutura:

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
      "telefono": {
        "type": "Text"
      },
      "celular": {
        "type": "Text"
      },
      "fecha_de_nacimento": {
        "type": "Datetime"
      },
      "id_produto_preferido" : {
        "type": "Integer"
      }
    }
  }'>
</div>

Baseado nesta tabela, desejamos o seguinte:

> Faça uma consulta que exiba todos os clientes ordenados por nome.