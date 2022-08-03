-- DML
-- INSERT
-- SELECT
-- UPDATE
-- DELETE

USE db_redesocial;

INSERT INTO tb_usuarios VALUES
	('Francine', 'fran_estrela', 'senha', NULL),
	('Gustavo', 'gustavo_tagli', 'senha', NULL),
	('Victor', 'victin03', 'senha', NULL),
	('Kauany', 'kau_moura', 'senha', NULL);

INSERT INTO tb_grupos VALUES
	('Meu primo tem um s�tio', 'Grupo para anunciar seus produtos saud�veis', NULL, 1),
	('Grupo Geral', 'Pra postar de tudo e o que quiser', NULL, 3),
	('Ontem eu comi', 'Tudo sobre culin�ria', NULL, 4);

INSERT INTO tb_postagens VALUES
	('verduras e legumes', 'produtos limpos e saud�veis', NULL, '03/08/2022', 1, 3),
	('Eu e meu skate', NULL, NULL, '01/08/2022', 3, 2),
	('Strogonofi', NULL, NULL, '20/07/2022', 2, 1);

INSERT INTO tb_inscritos VALUES
	(1, 3, '02/08/2022'),
	(2, 1, '21/06/2022'),
	(3, 2, '12/07/2022');

SELECT * FROM tb_usuarios;
SELECT * FROM tb_postagens;
SELECT * FROM tb_inscritos;
SELECT * FROM tb_grupos;

SELECT * FROM tb_usuarios
WHERE nome LIKE '%a%';

SELECT * FROM tb_usuarios
WHERE id_usuario BETWEEN 1 AND 3;