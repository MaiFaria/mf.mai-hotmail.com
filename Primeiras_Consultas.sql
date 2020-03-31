--Consultando a maior quantidade vendida de um produto:
SELECT *
FROM itens_notas_fiscais
WHERE codigo_do_produto = '1101035'
ORDER BY quantidade DESC;

--Consultando quantos itens existem com a maior quantidade de venda do produto '1101035':
SELECT COUNT(*)
FROM itens_notas_fiscais
WHERE codigo_do_produto = '1101035'
AND quantidade = 99;

--Obtendo clientes que fizeram mais de 2000 compras no ano de 2016:
SELECT cpf, COUNT(*)
FROM notas_fiscais
WHERE TO_CHAR(data_venda, 'YYYY') = '2016'
GROUP BY cpf
HAVING COUNT(*) > 2000;

--Classificando o ano de nascimento dos clientes:
SELECT nome,
    CASE WHEN TO_CHAR(data_de_nascimento, 'yyyy') <= '1990' THEN 'Velho'
         WHEN TO_CHAR(data_de_nascimento, 'yyyy') > '1990' AND TO_CHAR(data_de_nascimento, 'yyyy') <'1995' THEN 'Jovem'
         ELSE 'Crianças' END
         FROM tabela_de_clientes;

         