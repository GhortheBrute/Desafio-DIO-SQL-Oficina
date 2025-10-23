-- Listagem de todas as tabelas --

SELECT * FROM cliente;

SELECT * FROM cliente_pf;

SELECT * FROM cliente_pj;

SELECT * FROM contato;

SELECT * FROM endereco;

SELECT * FROM mecanico;

SELECT * FROM montadora;

SELECT * FROM ordem_de_servico;

SELECT * FROM os_peca;

SELECT * FROM os_servico;

SELECT * FROM os_servico_mecanico;

SELECT * FROM pagamento;

SELECT * FROM peca;

SELECT * FROM servico;

SELECT * FROM veiculo;

-- QUERIES Personalizadas --

SELECT AnoFabricacao AS `Ano de Fabricação`, COUNT(*) AS Quantidade
FROM veiculo v
GROUP BY AnoFabricacao;

SELECT RazaoSocial AS Montadora, Tipo AS `Tipo de Veículo`,COUNT(v.idMontadora) AS Quantidade
FROM veiculo v
LEFT JOIN montadora m USING (idMontadora)
GROUP BY Montadora, `Tipo de Veículo`;