CREATE TABLE categorias (
  id INTEGER NOT NULL PRIMARY KEY,
  nome TEXT NOT NULL,
  id_categoria_pai INTEGER DEFAULT NULL,
  FOREIGN KEY(id_categoria_pai) REFERENCES categorias(id)
);

INSERT INTO categorias (id, nome, id_categoria_pai) VALUES (1,'Eletrodomésticos',NULL),(2,'Consoles e vídeo games',NULL),(3,'Celulares',NULL),(4,'Condicionadores de ar',NULL),(5,'Informática',NULL),(6,'Comida',NULL),(7,'Bebida',NULL),(8,'Fruta',6),(9,'Verdura',6),(10,'Carnes',6),(11,'refrigerante',7),(12,'Bebidas alcoólicas',7),(13,'Águas aromatizadas',7),(14,'Águas',7),(15,'Portáteis',2),(16,'Fornos',1),(17,'Máquinas de lavar roupas',1),(18,'Geladeiras',1),(19,'Microondas',1),(22,'Computadores',5),(23,'Impressoras',5),(24,'Notebooks',5),(25,'Televisores',NULL),(26,'Massas',6);

CREATE TABLE marcas (
  id INTEGER NOT NULL PRIMARY KEY,
  nome TEXT NOT NULL
);

INSERT INTO marcas (id, nome) VALUES (8,'Apple'),(15,'Coca-Cola'),(1,'HP'),(13,'LG'),(7,'Microsoft'),(9,'Motorola'),(6,'Nintendo'),(14,'Panasonic'),(20,'Patagonia'),(12,'Philco'),(11,'Phillips'),(18,'Quilmes'),(2,'Samsung'),(10,'Sanyo'),(17,'Ser'),(5,'Sony'),(16,'Sprite'),(19,'Stella Artois'),(3,'Toshiba'),(4,'TP Link');

CREATE TABLE produtos (
  id INTEGER NOT NULL PRIMARY KEY,
  nome TEXT NOT NULL,
  modelo TEXT DEFAULT NULL,
  id_marca INTEGER DEFAULT NULL,
  descricao TEXT DEFAULT NULL,
  id_categoria INTEGER NOT NULL,
  preco REAL NOT NULL,
  pontuacao REAL DEFAULT NULL,
  FOREIGN KEY(id_marca) REFERENCES marcas(id),
  FOREIGN KEY(id_categoria) REFERENCES categorias(id)
);

INSERT INTO produtos (id, nome, modelo, id_marca, descricao, id_categoria, preco, pontuacao) VALUES (1,'TV LED 32','SY-XFJQLP-32',10,'Este televisor tem 32 polegadas e resolução de 1366x768 (HD Ready)',25,'8000','3.1'),(2,'Maça Vermelha',NULL,NULL,'Maça vermelha de origem nacional',8,'5','2.5'),(3,'Maçã verde',NULL,NULL,'Maçã verde de origem nacional',8,'5','2.5'),(4,'1kg de bife',NULL,NULL,NULL,10,'129','3.4'),(5,'1kg de peito de frango',NULL,NULL,NULL,10,'105','3'),(6,'Macarrão tricolor',NULL,NULL,'Macarrão de abóbora',26,'40','1.9'),(7,'Caixa de ravioles de verdura',NULL,NULL,'Os melhores ravioles do Brasil',26,'64','2.4'),(8,'Caracolitos',NULL,NULL,'Rica massa',26,'38','0.9'),(17,'Playstation 3','Slim',5,'Com 2 joysticks',2,'7000','3.6'),(18,'Playstation 4',NULL,5,'Com 1 joystick e 1 jogo',2,'8000','4.1'),(19,'Playstation 4 Slim','Slim',5,'Último modelo',2,'8500','4.3'),(20,'Wii','Branco com 250gb',6,'Nintendo Wii excelente para jogar com seus filhos',2,'7000','3.2'),(21,'Wii-U','Comando externo tipo iPad',6,'Nintendo Wii-U que vem com 1 joystick tipo iPad para controlar os personagens',2,'8000','3.6'),(22,'Nintendo Switch','Último console da Nintendo',6,'Mama mía',2,'12000','4.6'),(23,'TV Samsung 3D OLED 40\"','SMG-3D-40LXHFG',2,'Alta tele',25,'25000','3.7'),(24,'Smart TV Panasonic 50\"','PNSC-SM50JKGH',14,'Excelente para assistir filmes',25,'26000','4'),(27,'iPhone 6s','64gb preto',8,'Ótimo iPhone',3,'14000','4'),(28,'iPhone 6s','128gb branco',8,'Bom iPhone com a maior capacidade',3,'17000','4.5'),(29,'iPhone 7','128gb negro',8,'Muito bom este iPhone',3,'24000','4.8'),(30,'Coca-Cola','1.5lts',15,'Una garrafa de Coca-Cola',11,'36','4.2'),(31,'Coca-Cola','2.25lts',15,'Uma garrafa de Coca-Cola maior',11,'42','3.8'),(32,'Sprite','1.5lts',16,'Uma garrafa de Sprite',11,'34','3.6'),(33,'Água sabor pomelo','1.5lts',17,'Uma garrafa de água saborizada',13,'28','3.4'),(34,'Água sabor laranja','1.5lts',17,'Uma garrafa de água sabor laranja',13,'28','3.5'),(35,'Cerveja Quilmes','1lt',18,'O sabor do encontro',12,'22','2.2'),(36,'Cerveja Stella Artois','1lt',19,'É uma cerveja única',12,'30','3.2'),(37,'Cerveja Artesanal Patagonia Amber Ale','750cc',20,'A mais encorpada',12,'42','4.3');

CREATE TABLE clientes (
  id INTEGER NOT NULL PRIMARY KEY,
  nome TEXT NOT NULL,
  sobrenome TEXT NOT NULL,
  email TEXT NOT NULL,
  telefone TEXT DEFAULT NULL,
  celular TEXT DEFAULT NULL,
  data_de_nascimento TEXT NOT NULL,
  id_produto_preferido INTEGER DEFAULT NULL,
  FOREIGN KEY(id_produto_preferido) REFERENCES produtos(id)
);


INSERT INTO clientes (id, nome, sobrenome, email, telefone, celular, data_de_nascimento, id_produto_preferido) VALUES (1,'Sacha','LIfszyc','sacha.lifszyc@gmail.com','46319613','1153980907','1990-08-12 00:00:00',37),(2,'Dalton','Susnisky','dalton.susnisky@dh.com','49968901','1130315490','1990-10-03 00:00:00',22),(3,'Chavier','Herrera','javi@dh.com','49074344',NULL,'1990-09-01 00:00:00',NULL),(4,'Carla','Zapata','carlazapata@gmail.com',NULL,'1156701024','1986-03-10 00:00:00',29),(5,'Laura','Cortés','laucortes14@hotmail.com',NULL,'1157843301','1978-05-06 00:00:00',NULL),(6,'Martina','Crespo','martucrespo84@hotmail.com','46338998',NULL,'1984-03-07 00:00:00',1);

CREATE TABLE vendas (
  id INTEGER NOT NULL PRIMARY KEY,
  data TEXT NOT NULL,
  id_cliente INTEGER NOT NULL,
  id_produto INTEGER DEFAULT NULL,
  quantidade INTEGER NOT NULL,
  FOREIGN KEY(id_cliente) REFERENCES clientes(id),
  FOREIGN KEY(id_produto) REFERENCES produtos(id)
);

INSERT INTO vendas (id, data, id_cliente, id_produto, quantidade) VALUES (1,'2017-04-28 00:00:00',1,2,5),(2,'2017-04-28 00:00:00',1,3,4),(3,'2017-04-21 00:00:00',2,28,1),(4,'2017-04-20 00:00:00',3,28,1),(5,'2017-04-19 00:00:00',4,28,1),(6,'2017-04-07 00:00:00',1,29,1),(7,'2017-04-14 00:00:00',5,27,1),(8,'2017-03-14 00:00:00',5,29,3),(9,'2017-02-15 00:00:00',2,22,10),(10,'2017-02-15 00:00:00',1,19,1),(11,'2017-02-14 00:00:00',3,18,1),(12,'2016-12-08 00:00:00',5,35,12),(13,'2016-11-12 00:00:00',3,36,1),(14,'2016-11-07 00:00:00',3,35,4),(15,'2016-11-16 00:00:00',3,37,1),(16,'2016-11-12 00:00:00',4,36,6),(17,'2016-07-09 00:00:00',3,35,3),(18,'2016-11-12 00:00:00',1,37,2),(19,'2016-03-08 00:00:00',2,37,2),(20,'2016-08-12 00:00:00',5,35,6),(21,'2016-07-04 00:00:00',3,36,3),(22,'2016-09-10 00:00:00',1,37,1),(23,'2016-02-01 00:00:00',2,35,1),(24,'2015-12-25 00:00:00',2,37,12);