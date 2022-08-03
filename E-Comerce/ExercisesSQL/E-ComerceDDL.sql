CREATE DATABASE db_ecomerce;
USE db_ecomerce;

CREATE TABLE tb_usuarios(
	id_usuario INT NOT NULL IDENTITY PRIMARY KEY,
	nome VARCHAR(50) NOT NULL,
	usuario VARCHAR(50) NOT NULL,
	senha VARCHAR(100) NOT NULL,
	documento VARCHAR(50) NOT NULL
);

CREATE TABLE tb_produtos(
	id_produto INT NOT NULL IDENTITY PRIMARY KEY,
	produto VARCHAR(50) NOT NULL,
	descricao VARCHAR(100) NOT NULL,
	valor FLOAT NOT NULL,
	estoque INT NOT NULL,
	categoria VARCHAR(50) CHECK(categoria IN ('CAT1','CAT2')) NOT NULL,
	url_imagem VARCHAR(100) NULL
);

CREATE TABLE compras(
	fk_usuario INT NOT NULL,
	fk_produto INT NOT NULL,
	data DATE NOT NULL,
	FOREIGN KEY (fk_usuario)
	REFERENCES tb_usuarios(id_usuario),
	FOREIGN KEY (fk_produto)
	REFERENCES tb_produtos(id_produto),
);