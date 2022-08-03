CREATE DATABASE db_classificados;
USE db_classificados;

CREATE TABLE tb_usuarios(
	id_usuario INT NOT NULL IDENTITY PRIMARY KEY,
	nome VARCHAR(45) NOT NULL,
	usuario VARCHAR(45) NOT NULL,
	senha VARCHAR(100) NOT NULL,
	pessoa VARCHAR(45) CHECK(pessoa IN ('FIS','JUR')) NOT NULL,
	url_imagem VARCHAR(100) NULL,
);

CREATE TABLE tb_anuncios(
	id_anuncio INT NOT NULL IDENTITY PRIMARY KEY,
	titulo VARCHAR(45) NOT NULL,
	descricao VARCHAR(1000) NOT NULL,
	contato VARCHAR(50) NOT NULL,
	url_imagem VARCHAR(100) NULL,
	data_anuncio DATE NOT NULL,
	fk_usuario INT NOT NULL,
	FOREIGN KEY (fk_usuario)
		REFERENCES tb_usuarios(id_usuario)
);