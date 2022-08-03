-- DML
-- INSERT
-- SELECT
-- UPDATE
-- DELETE

USE db_classificados;


INSERT INTO tb_usuarios
	VALUES ('Francine', 'fran_estrela', 'senha', 'FIS', NULL),
	('Gustavo', 'gustavo_tagli', 'senha', 'FIS', NULL),
	('Victor', 'victin03', 'senha', 'JUR', NULL),
	('Kauany', 'kau_moura', 'senha', 'JUR', NULL);

INSERT INTO tb_anuncios VALUES
	('Venda de cestas org�nicas', 'A Fazenda Vila Feliz vende cestas
	de alimentos org�nicos com os seguintes produtos: ovo, queijo,
	mel, alface, tomate, berinjela, cebola, alho, salsinha, pimenta,
	entre outros. As cestas podem ser personalizadas e s�o entregues
	toda semana, com taxa de entrega de acordo com regi�o.',
	'Rodrigo Nunes � 8181-1000', NULL, '03/08/2022', 1),
	('Contrata-se cantora de samba', 'O restaurante Rio, localizado
	na Avenida Assis, procura cantora de samba para fazer shows na
	ter�a e quinta-feira, das 19h �s 22h. A cantora ter� banda ao
	vivo, palco e alimenta��o inclusa.',
	'Ant�nia Alves � riorestaurante@email.com', NULL, '03/08/2022', 2)

SELECT * FROM tb_usuarios;
SELECT * FROM tb_anuncios;

SELECT * FROM tb_anuncios
WHERE contato LIKE '%@%';

SELECT * FROM tb_usuarios
WHERE id_usuario BETWEEN 1 AND 3;