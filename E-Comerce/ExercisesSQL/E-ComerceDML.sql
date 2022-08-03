-- DML
-- INSERT
-- SELECT
-- UPDATE
-- DELETE

INSERT INTO tb_usuarios
	VALUES ('Francine', 'fran_estrela', 'senha', '55555555'),
	('Gustavo', 'gustavo_tagli', 'senha', '44444444'),
	('Victor', 'victin03', 'senha', '88888888'),
	('Kauany', 'kau_moura', 'senha', '99999999');

INSERT INTO tb_produtos
	VALUES ('Galaxy Note 20', 'Smartphone Samsumg galaxy', 2589.75, 45, 'CAT1', NULL),
	('Galaxy S21 Plus', 'Smartphone Samsumg galaxy', 4245.84, 14, 'CAT2', NULL),
	('Galaxy S21', 'Smartphone Samsumg galaxy', 3524.12, 21, 'CAT1', NULL);

INSERT INTO compras
	VALUES (1,3, '03/08/2022'),
	(2,4, '03/08/2022'),
	(3,2, '03/08/2022');

SELECT * FROM tb_usuarios;
SELECT * FROM tb_produtos;
SELECT * FROM compras;

SELECT * FROM tb_usuarios
WHERE nome LIKE '%a%';

SELECT * FROM tb_usuarios
WHERE id_usuario BETWEEN 1 AND 3;