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
	('Venda de cestas orgânicas', 'A Fazenda Vila Feliz vende cestas
	de alimentos orgânicos com os seguintes produtos: ovo, queijo,
	mel, alface, tomate, berinjela, cebola, alho, salsinha, pimenta,
	entre outros. As cestas podem ser personalizadas e são entregues
	toda semana, com taxa de entrega de acordo com região.',
	'Rodrigo Nunes – 8181-1000', NULL, '03/08/2022', 1),
	('Contrata-se cantora de samba', 'O restaurante Rio, localizado
	na Avenida Assis, procura cantora de samba para fazer shows na
	terça e quinta-feira, das 19h às 22h. A cantora terá banda ao
	vivo, palco e alimentação inclusa.',
	'Antônia Alves – riorestaurante@email.com', NULL, '03/08/2022', 2)

SELECT * FROM tb_usuarios;
SELECT * FROM tb_anuncios;

SELECT * FROM tb_anuncios
WHERE contato LIKE '%@%';

SELECT * FROM tb_usuarios
WHERE id_usuario BETWEEN 1 AND 3;