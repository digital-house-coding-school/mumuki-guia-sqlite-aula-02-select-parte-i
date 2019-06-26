O operador **||** nos permite concatenar textos.

Observe a consulta:

`` sql
SELECT "Olá" || "" || "Mundo" as saudacao from clientes;
``

trará o texto: "Olá Mundo". 

Com essas mesmas idéias, poderíamos usar colunas em vez de textos literais.

Seu objetivo é:

> Faça uma consulta que exiba UMA ÚNICA COLUNA que tenha o nome e sobrenome dos clientes separados com espaço. A coluna deve ser chamada de "nome completo"