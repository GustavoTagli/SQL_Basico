-- DML
-- INSERT
-- SELECT
-- UPDATE
-- DELETE

INSERT INTO tb_usuarios
	VALUES ('Francine', 'fran_estrela', 'senha', 'CLI', NULL),
	('Gustavo', 'gustavo_tagli', 'senha', 'ADM', NULL),
	('Victor', 'victin03', 'senha', 'CLI', NULL),
	('Kauany', 'kau_moura', 'senha', 'CLI', NULL);

INSERT INTO tb_categorias
	VALUES ('smartphones')

INSERT INTO tb_produtos
	VALUES ('Galaxy Note 20', 'Smartphone Samsumg galaxy', 2589.75, NULL, 2, 1),
	('Galaxy S21 Plus', 'Smartphone Samsumg galaxy', 4245.84, NULL, 2, 1),
	('Galaxy S21', 'Smartphone Samsumg galaxy', 3524.12, NULL, 2, 1);

INSERT INTO compras
	VALUES (1,4, '03/08/2022'),
	(3,2, '03/08/2022'),
	(4,3, '03/08/2022');

SELECT * FROM tb_usuarios;
SELECT * FROM tb_produtos;
SELECT * FROM tb_categorias;
SELECT * FROM compras;

SELECT * FROM tb_usuarios
WHERE nome LIKE '%c%';

SELECT * FROM tb_usuarios
WHERE id_usuario BETWEEN 2 AND 4;