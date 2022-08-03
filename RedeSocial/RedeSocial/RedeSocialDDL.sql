CREATE DATABASE db_redesocial;
USE db_redesocial;

CREATE TABLE tb_usuarios(
	id_usuario INT NOT NULL IDENTITY PRIMARY KEY,
	nome VARCHAR(45) NOT NULL,
	usuario VARCHAR(45) NOT NULL,
	senha VARCHAR(100) NOT NULL,
	url_foto VARCHAR(100) NULL
);

CREATE TABLE tb_grupos(
	id_grupo INT NOT NULL IDENTITY PRIMARY KEY,
	grupo VARCHAR(45) NOT NULL,
	descricao VARCHAR(100) NULL,
	url_imagem VARCHAR(100) NULL,
	fk_criador INT NOT NULL,
	FOREIGN KEY (fk_criador)
		REFERENCES tb_usuarios(id_usuario)
);

CREATE TABLE tb_inscritos(
	fk_usuario INT NOT NULL,
	fk_grupo INT NOT NULL,
	data_inscricao DATE NOT NULL,
	FOREIGN KEY (fk_usuario)
		REFERENCES tb_usuarios(id_usuario),
	FOREIGN KEY (fk_grupo)
		REFERENCES tb_grupos(id_grupo)
);

CREATE TABLE tb_postagens(
	id_postagens INT NOT NULL IDENTITY PRIMARY KEY,
	titulo VARCHAR(50) NULL,
	descricao VARCHAR(1000) NULL,
	url_imagem VARCHAR(100),
	data_postagem DATE NOT NULL,
	fk_criador INT NOT NULL,
	fk_grupo INT NOT NULL,
	FOREIGN KEY (fk_criador)
		REFERENCES tb_usuarios(id_usuario),
	FOREIGN KEY (fk_grupo)
		REFERENCES tb_grupos(id_grupo)
);