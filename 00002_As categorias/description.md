Da mesma forma que os produtos têm marcas, eles também têm categorias!

Vamos conhecer essa nova tabela:

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
    }
  }'>
</div>

Para este exercício:

> Faça uma consulta que exiba todos os dados de todas as categorias