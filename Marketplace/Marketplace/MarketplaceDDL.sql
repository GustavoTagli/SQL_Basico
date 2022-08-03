CREATE DATABASE db_marketplace;
USE db_marketplace;

CREATE TABLE tb_usuarios(
	id_usuario INT NOT NULL IDENTITY PRIMARY KEY,
	nome VARCHAR(50) NOT NULL,
	usuario VARCHAR(50) NOT NULL,
	senha VARCHAR(100) NOT NULL,
	tipo VARCHAR(50) CHECK(tipo IN ('CLI', 'ADM')) NOT NULL,
	url_foto VARCHAR(100) NULL
);

CREATE TABLE tb_categorias(
	id_categoria INT NOT NULL IDENTITY PRIMARY KEY,
	categoria VARCHAR(45) NOT NULL
);

CREATE TABLE tb_produtos(
	id_produto INT NOT NULL IDENTITY PRIMARY KEY,
	produto VARCHAR(45) NOT NULL,
	descricao VARCHAR(100) NOT NULL,
	valor FLOAT NOT NULL,
	url_imagem VARCHAR(100) NULL,
	fk_criador INT NOT NULL,
	fk_categoria INT NOT NULL,
	FOREIGN KEY (fk_criador)
		REFERENCES tb_usuarios(id_usuario),
	FOREIGN KEY (fk_categoria)
		REFERENCES tb_categorias(id_categoria)
);

CREATE TABLE compras(
	fk_usuario INT NOT NULL,
	fk_produto INT NOT NULL,
	data_compra DATE NOT NULL,
	FOREIGN KEY (fk_usuario)
		REFERENCES tb_usuarios(id_usuario),
	FOREIGN KEY (fk_produto)
		REFERENCES tb_produtos(id_produto)
);