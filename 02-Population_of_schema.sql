USE oficina;

-- -----------------------------------------------------
-- 1. CATÁLOGOS (Tabelas independentes)
-- -----------------------------------------------------

-- Montadoras (IDs 1-7)
INSERT INTO montadora (RazaoSocial) VALUES
('Volkswagen'), ('Ford'), ('Chevrolet'), ('Fiat'), ('Toyota'), ('Honda'), ('Hyundai');

-- Serviços (IDs 1-6)
INSERT INTO servico (Descricao, Valor) VALUES
('Troca de Óleo e Filtro', 150.00),
('Alinhamento e Balanceamento', 120.00),
('Troca de Pastilhas de Freio', 250.00),
('Diagnóstico de Injeção', 90.00),
('Revisão Completa', 600.00),
('Troca de Pneus', 80.00);

-- Peças (IDs 1-5)
INSERT INTO peca (Descricao, Marca, ValorUnitario) VALUES
('Filtro de Óleo', 'Bosch', 45.00),
('Óleo 5W30 (Litro)', 'Castrol', 55.00),
('Pastilha de Freio Dianteira', 'Cobreq', 120.00),
('Vela de Ignição', 'NGK', 30.00),
('Pneu Aro 15', 'Pirelli', 350.00);

-- -----------------------------------------------------
-- 2. CONTATOS E ENDEREÇOS (Dependências de Clientes/Mecânicos)
-- -----------------------------------------------------

-- Contatos (Total: 45)
-- 1-5: Mecânicos
-- 6-25: Clientes PF (20)
-- 26-45: Clientes PJ (20)
INSERT INTO contato (Telefone, Email) VALUES
('41999990001', 'mecanico1@oficina.com'),
('41999990002', 'mecanico2@oficina.com'),
('41999990003', 'mecanico3@oficina.com'),
('41999990004', 'mecanico4@oficina.com'),
('41999990005', 'mecanico5@oficina.com'),
('11988880001', 'ana.silva@email.com'),
('11988880002', 'beatriz.costa@email.com'),
('11988880003', 'carla.dias@email.com'),
('11988880004', 'daniel.esteves@email.com'),
('11988880005', 'eduardo.fernandes@email.com'),
('11988880006', 'fabia.gomes@email.com'),
('11988880007', 'gabriel.henriques@email.com'),
('11988880008', 'heloisa.ipanema@email.com'),
('11988880009', 'igor.jardim@email.com'),
('11988880010', 'julia.klein@email.com'),
('11988880011', 'lucas.lopes@email.com'),
('11988880012', 'maria.martins@email.com'),
('11988880013', 'natalia.nogueira@email.com'),
('11988880014', 'otavio.oliveira@email.com'),
('11988880015', 'paula.pereira@email.com'),
('11988880016', 'quintino.queiroz@email.com'),
('11988880017', 'rafael.ramos@email.com'),
('11988880018', 'sofia.souza@email.com'),
('11988880019', 'tiago.tavares@email.com'),
('11988880020', 'ursula.uchoa@email.com'),
('11988880021', 'contato@logfast.com'),
('11988880022', 'compras@mercadoabc.com'),
('11988880023', 'adm@construtoraforte.com'),
('11988880024', 'suporte@techinfo.com'),
('11988880025', 'financeiro@xyzconsult.com'),
('11988880026', 'gerencia@brilhomax.com'),
('11988880027', 'contato@modaecia.com'),
('11988880028', 'recepcao@academiasaude.com'),
('11988880029', 'pedidos@sabordivino.com'),
('11988880030', 'frota@totallog.com'),
('11988880031', 'secretaria@escolaaprender.com'),
('11988880032', 'contato@paoquente.com'),
('11988880033', 'contato@justicacerta.com'),
('11988880034', 'comex@globaltrade.com'),
('11988880035', 'contato@eficazmkt.com'),
('11988880036', 'vendas@campoverde.com'),
('11988880037', 'laboratorio@quimfina.com'),
('11988880038', 'reservas@hoteldosol.com'),
('11988880039', 'orcamento@papirografica.com'),
('11988880040', 'central@aguiaseg.com');

-- Endereços (Total: 40)
-- 1-20: Clientes PF
-- 21-40: Clientes PJ
INSERT INTO endereco (Rua, Numero, Bairro, Cidade, Estado, CEP) VALUES
('Rua A', 1, 'Centro', 'Cidade A', 'SP', '01001000'),
('Rua B', 2, 'Centro', 'Cidade A', 'SP', '01001001'),
('Rua C', 3, 'Centro', 'Cidade A', 'SP', '01001002'),
('Rua D', 4, 'Centro', 'Cidade A', 'SP', '01001003'),
('Rua E', 5, 'Centro', 'Cidade A', 'SP', '01001004'),
('Rua F', 6, 'Vila', 'Cidade A', 'SP', '01001005'),
('Rua G', 7, 'Vila', 'Cidade A', 'SP', '01001006'),
('Rua H', 8, 'Vila', 'Cidade A', 'SP', '01001007'),
('Rua I', 9, 'Vila', 'Cidade A', 'SP', '01001008'),
('Rua J', 10, 'Vila', 'Cidade A', 'SP', '01001009'),
('Rua K', 11, 'Lapa', 'Cidade B', 'RJ', '02001000'),
('Rua L', 12, 'Lapa', 'Cidade B', 'RJ', '02001001'),
('Rua M', 13, 'Lapa', 'Cidade B', 'RJ', '02001002'),
('Rua N', 14, 'Lapa', 'Cidade B', 'RJ', '02001003'),
('Rua O', 15, 'Lapa', 'Cidade B', 'RJ', '02001004'),
('Rua P', 16, 'Jardim', 'Cidade B', 'RJ', '02001005'),
('Rua Q', 17, 'Jardim', 'Cidade B', 'RJ', '02001006'),
('Rua R', 18, 'Jardim', 'Cidade B', 'RJ', '02001007'),
('Rua S', 19, 'Jardim', 'Cidade B', 'RJ', '02001008'),
('Rua T', 20, 'Jardim', 'Cidade B', 'RJ', '02001009'),
('Av. X', 100, 'Industrial', 'Cidade C', 'MG', '03001000'),
('Av. Y', 200, 'Industrial', 'Cidade C', 'MG', '03001001'),
('Av. Z', 300, 'Industrial', 'Cidade C', 'MG', '03001002'),
('Av. W', 400, 'Industrial', 'Cidade C', 'MG', '03001003'),
('Av. V', 500, 'Industrial', 'Cidade C', 'MG', '03001004'),
('Av. U', 600, 'Comercial', 'Cidade C', 'MG', '03001005'),
('Av. T', 700, 'Comercial', 'Cidade C', 'MG', '03001006'),
('Av. S', 800, 'Comercial', 'Cidade C', 'MG', '03001007'),
('Av. R', 900, 'Comercial', 'Cidade C', 'MG', '03001008'),
('Av. Q', 1000, 'Comercial', 'Cidade C', 'MG', '03001009'),
('Pr. 1', 10, 'Norte', 'Cidade D', 'RS', '04001000'),
('Pr. 2', 20, 'Norte', 'Cidade D', 'RS', '04001001'),
('Pr. 3', 30, 'Norte', 'Cidade D', 'RS', '04001002'),
('Pr. 4', 40, 'Norte', 'Cidade D', 'RS', '04001003'),
('Pr. 5', 50, 'Norte', 'Cidade D', 'RS', '04001004'),
('Pr. 6', 60, 'Sul', 'Cidade D', 'RS', '04001005'),
('Pr. 7', 70, 'Sul', 'Cidade D', 'RS', '04001006'),
('Pr. 8', 80, 'Sul', 'Cidade D', 'RS', '04001007'),
('Pr. 9', 90, 'Sul', 'Cidade D', 'RS', '04001008'),
('Pr. 10', 110, 'Sul', 'Cidade D', 'RS', '04001009');

-- -----------------------------------------------------
-- 3. MECÂNICOS (5)
-- -----------------------------------------------------

-- Mecânicos (IDs 1-5)
-- Usando contatos IDs 1-5
INSERT INTO mecanico (Nome, idContato) VALUES
('Carlos Alberto', 1),
('Bruno Silva', 2),
('Ricardo Mendes', 3),
('Fernando Lima', 4),
('Jorge Andrade', 5);

-- -----------------------------------------------------
-- 4. CLIENTES (20 PF, 20 PJ)
-- -----------------------------------------------------

-- Clientes base (IDs 1-40)
-- 20 PFs (IDs 1-20)
INSERT INTO cliente (Tipo, idEndereco, idContato) VALUES
('PF', 1, 6), ('PF', 2, 7), ('PF', 3, 8), ('PF', 4, 9), ('PF', 5, 10),
('PF', 6, 11), ('PF', 7, 12), ('PF', 8, 13), ('PF', 9, 14), ('PF', 10, 15),
('PF', 11, 16), ('PF', 12, 17), ('PF', 13, 18), ('PF', 14, 19), ('PF', 15, 20),
('PF', 16, 21), ('PF', 17, 22), ('PF', 18, 23), ('PF', 19, 24), ('PF', 20, 25);
-- 20 PJs (IDs 21-40)
INSERT INTO cliente (Tipo, idEndereco, idContato) VALUES
('PJ', 21, 26), ('PJ', 22, 27), ('PJ', 23, 28), ('PJ', 24, 29), ('PJ', 25, 30),
('PJ', 26, 31), ('PJ', 27, 32), ('PJ', 28, 33), ('PJ', 29, 34), ('PJ', 30, 35),
('PJ', 31, 36), ('PJ', 32, 37), ('PJ', 33, 38), ('PJ', 34, 39), ('PJ', 35, 40),
('PJ', 36, 41), ('PJ', 37, 42), ('PJ', 38, 43), ('PJ', 39, 44), ('PJ', 40, 45);

-- Clientes PF (IDs 1-20)
INSERT INTO cliente_pf (idCliente, CPF, PNome, MNome, UNome, DataNascimento) VALUES
(1, '11122233301', 'Ana', 'S.', 'Silva', '1990-01-01'),
(2, '11122233302', 'Beatriz', 'C.', 'Costa', '1985-02-10'),
(3, '11122233303', 'Carla', 'D.', 'Dias', '1992-03-15'),
(4, '11122233304', 'Daniel', 'E.', 'Esteves', '1988-04-20'),
(5, '11122233305', 'Eduardo', 'F.', 'Fernandes', '1995-05-25'),
(6, '11122233306', 'Fabia', 'G.', 'Gomes', '1991-06-30'),
(7, '11122233307', 'Gabriel', 'H.', 'Henriques', '1987-07-05'),
(8, '11122233308', 'Heloisa', 'I.', 'Ipanema', '1993-08-12'),
(9, '11122233309', 'Igor', 'J.', 'Jardim', '1989-09-19'),
(10, '11122233310', 'Julia', 'K.', 'Klein', '1994-10-22'),
(11, '11122233311', 'Lucas', 'L.', 'Lopes', '1990-11-28'),
(12, '11122233312', 'Maria', 'M.', 'Martins', '1986-12-01'),
(13, '11122233313', 'Natalia', 'N.', 'Nogueira', '1992-01-07'),
(14, '11122233314', 'Otavio', 'O.', 'Oliveira', '1988-02-14'),
(15, '11122233315', 'Paula', 'P.', 'Pereira', '1995-03-21'),
(16, '11122233316', 'Quintino', 'Q.', 'Queiroz', '1991-04-28'),
(17, '11122233317', 'Rafael', 'R.', 'Ramos', '1987-05-05'),
(18, '11122233318', 'Sofia', 'S.', 'Souza', '1993-06-11'),
(19, '11122233319', 'Tiago', 'T.', 'Tavares', '1989-07-18'),
(20, '11122233320', 'Ursula', 'U.', 'Uchoa', '1994-08-25');

-- Clientes PJ (IDs 21-40)
INSERT INTO cliente_pj (idCliente, CNPJ, RazaoSocial, NomeFantasia) VALUES
(21, '11222333000101', 'Transportes Rápidos Ltda', 'LogFast'),
(22, '11222333000102', 'Comércio de Alimentos ABC', 'Mercado ABC'),
(23, '11222333000103', 'Construções e Obras S.A.', 'Construtora Forte'),
(24, '11222333000104', 'Tecnologia e Sistemas Info', 'TechInfo'),
(25, '11222333000105', 'Consultoria Financeira XYZ', 'XYZ Consult'),
(26, '11222333000106', 'Serviços de Limpeza Brilho', 'BrilhoMax'),
(27, '11222333000107', 'Varejo de Roupas Moda', 'Moda & Cia'),
(28, '11222333000108', 'Academia Corpo e Mente', 'Academia Saúde'),
(29, '11222333000109', 'Restaurante Sabor Divino', 'Sabor Divino'),
(30, '11222333000110', 'Logística Integrada Total', 'TotalLog'),
(31, '11222333000111', 'Escola Aprender Mais', 'Escola Aprender'),
(32, '11222333000112', 'Panificadora Pão Quente', 'Pão Quente'),
(33, '11222333000113', 'Advocacia & Associados', 'Justiça Certa'),
(34, '11222333000114', 'Importação e Exportação Global', 'GlobalTrade'),
(35, '11222333000115', 'Marketing Digital Eficaz', 'Eficaz Mkt'),
(36, '11222333000116', 'Agropecuária Campo Verde', 'Campo Verde'),
(37, '11222333000117', 'Indústria Química Fina', 'QuimFina'),
(38, '11222333000118', 'Hotelaria e Turismo Sol', 'Hotel do Sol'),
(39, '11222333000119', 'Gráfica e Editora Papiro', 'Papiro Gráfica'),
(40, '11222333000120', 'Segurança e Vigilância Águia', 'Águia Seg');

-- -----------------------------------------------------
-- 5. VEÍCULOS (Amostra para PFs e PJs)
-- -----------------------------------------------------
-- Veículo (idFabricante) refere-se a montadora(idMontadora)

-- Veículos de Clientes PF (IDs 1-10)
-- 1 veículo (Clientes 1-5)
INSERT INTO veiculo (idCliente, idFabricante, AnoFabricacao, AnoModelo, Tipo, Placa, Cor) VALUES
(1, 1, '2019', '2019', 'CARRO', 'ABC1111', 'Preto'),
(2, 2, '2020', '2021', 'CARRO', 'BBB2222', 'Branco'),
(3, 3, '2018', '2018', 'CARRO', 'CCC3333', 'Vermelho'),
(4, 4, '2021', '2021', 'CAMINHONETE', 'DDD4444', 'Azul'),
(5, 5, '2022', '2022', 'CARRO', 'EEE5555', 'Prata');
-- 2 veículos (Clientes 6-10)
INSERT INTO veiculo (idCliente, idFabricante, AnoFabricacao, AnoModelo, Tipo, Placa, Cor) VALUES
(6, 6, '2017', '2018', 'CARRO', 'FFF6666', 'Cinza'),
(6, 7, '2020', '2020', 'CARRO', 'GGG7777', 'Verde'),
(7, 1, '2019', '2020', 'CAMINHONETE', 'HHH8888', 'Preto'),
(7, 2, '2015', '2015', 'CARRO', 'III9999', 'Branco'),
(8, 3, '2021', '2022', 'CARRO', 'JJJ1010', 'Vermelho'),
(8, 4, '2016', '2016', 'CARRO', 'KKK1212', 'Azul'),
(9, 5, '2018', '2019', 'CARRO', 'LLL1313', 'Prata'),
(9, 6, '2022', '2022', 'CAMINHONETE', 'MMM1414', 'Cinza'),
(10, 7, '2019', '2019', 'CARRO', 'NNN1515', 'Verde'),
(10, 1, '2017', '2017', 'CARRO', 'OOO1616', 'Preto');
-- Total PF: 15 veículos (IDs 1-15)

-- Veículos de Clientes PJ (Amostra para clientes 21, 22 e 30)
-- Cliente 21 (LogFast) - 5 veículos (Caminhões/Caminhonetes)
INSERT INTO veiculo (idCliente, idFabricante, AnoFabricacao, AnoModelo, Tipo, Placa, Cor) VALUES
(21, 1, '2020', '2020', 'CAMINHÃO', 'PJA1001', 'Branco'),
(21, 2, '2020', '2020', 'CAMINHÃO', 'PJA1002', 'Branco'),
(21, 1, '2021', '2021', 'CAMINHÃO', 'PJA1003', 'Branco'),
(21, 4, '2022', '2022', 'CAMINHONETE', 'PJA1004', 'Prata'),
(21, 4, '2022', '2022', 'CAMINHONETE', 'PJA1005', 'Prata');
-- Cliente 22 (Mercado ABC) - 2 veículos (Caminhonetes)
INSERT INTO veiculo (idCliente, idFabricante, AnoFabricacao, AnoModelo, Tipo, Placa, Cor) VALUES
(22, 4, '2021', '2021', 'CAMINHONETE', 'PJB2001', 'Branco'),
(22, 4, '2021', '2021', 'CAMINHONETE', 'PJB2002', 'Branco');
-- Cliente 30 (TotalLog) - 3 veículos
INSERT INTO veiculo (idCliente, idFabricante, AnoFabricacao, AnoModelo, Tipo, Placa, Cor) VALUES
(30, 1, '2022', '2022', 'CAMINHÃO', 'PJC3001', 'Vermelho'),
(30, 1, '2022', '2022', 'CAMINHÃO', 'PJC3002', 'Vermelho'),
(30, 4, '2020', '2020', 'CAMINHONETE', 'PJC3003', 'Preto');
-- Total PJ: 10 veículos (IDs 16-25)

-- -----------------------------------------------------
-- 6. AMOSTRA DE ORDENS DE SERVIÇO (5 OS)
-- -----------------------------------------------------
-- Copie e modifique este bloco para gerar suas 100 OS.

-- OS 1 (idOrdem = 1) - Cliente 1 (PF), Veículo 1 (ABC1111)
-- Status: EM ATENDIMENTO
INSERT INTO ordem_de_servico (idCliente, idVeiculo, Descricao, Status) VALUES
(1, 1, 'Barulho no motor ao ligar.', 'EM ATENDIMENTO');
-- Serviços (idServico = 4: Diag. Injeção, Valor: 90.00)
INSERT INTO os_servico (idOrdem, idServico, ValorTotal) VALUES
(1, 4, 90.00);
-- Peças (idPeca = 4: Vela, Qtd: 4, Valor: 30.00)
INSERT INTO os_peca (idOrdem, idPeca, Quantidade, ValorUnitario) VALUES
(1, 4, 4, 30.00);
-- Mecânico (idMecanico = 1: Carlos)
INSERT INTO os_servico_mecanico (idMecanico, idOrdem, idServico) VALUES
(1, 1, 4);
-- Pagamento (Pendente)
INSERT INTO pagamento (idOrdem, Metodo, Valor, Status) VALUES
(1, 'PIX', 210.00, 'PENDENTE'); -- 90.00 (serviço) + 120.00 (4*30 peças)


-- OS 2 (idOrdem = 2) - Cliente 6 (PF), Veículo 7 (GGG7777)
-- Status: EM ATENDIMENTO
INSERT INTO ordem_de_servico (idCliente, idVeiculo, Descricao, Status) VALUES
(6, 7, 'Revisão e troca de óleo.', 'EM ATENDIMENTO');
-- Serviços (idServico = 1: Troca de Óleo, 150.00; idServico = 5: Revisão, 600.00)
INSERT INTO os_servico (idOrdem, idServico, ValorTotal) VALUES
(2, 1, 150.00),
(2, 5, 600.00);
-- Peças (idPeca = 1: Filtro, Qtd: 1, 45.00; idPeca = 2: Óleo, Qtd: 4, 55.00)
INSERT INTO os_peca (idOrdem, idPeca, Quantidade, ValorUnitario) VALUES
(2, 1, 1, 45.00),
(2, 2, 4, 55.00);
-- Mecânicos (idMecanico = 2: Bruno no serviço 1; idMecanico = 3: Ricardo no serviço 5)
INSERT INTO os_servico_mecanico (idMecanico, idOrdem, idServico) VALUES
(2, 2, 1),
(3, 2, 5);
-- Pagamento (Pendente)
INSERT INTO pagamento (idOrdem, Metodo, Valor, Status) VALUES
(2, 'CRÉDITO', 1015.00, 'PENDENTE'); -- 750 (serviços) + 265 (peças)


-- OS 3 (idOrdem = 3) - Cliente 21 (PJ), Veículo 16 (PJA1001)
-- Status: AGUARDANDO PEÇAS
INSERT INTO ordem_de_servico (idCliente, idVeiculo, Descricao, Status) VALUES
(21, 16, 'Troca de pastilhas de freio do caminhão.', 'AGUARDANDO PEÇAS');
-- Serviços (idServico = 3: Troca Pastilha, 250.00)
INSERT INTO os_servico (idOrdem, idServico, ValorTotal) VALUES
(3, 3, 250.00);
-- Peças (idPeca = 3: Pastilha, Qtd: 2, 120.00)
INSERT INTO os_peca (idOrdem, idPeca, Quantidade, ValorUnitario) VALUES
(3, 3, 2, 120.00);
-- Mecânicos (idMecanico = 1: Carlos e 2: Bruno no mesmo serviço)
INSERT INTO os_servico_mecanico (idMecanico, idOrdem, idServico) VALUES
(1, 3, 3),
(2, 3, 3);
-- Pagamento (Pendente)
INSERT INTO pagamento (idOrdem, Metodo, Valor, Status) VALUES
(3, 'DÉBITO', 490.00, 'PENDENTE'); -- 250 (serviço) + 240 (peças)


-- OS 4 (idOrdem = 4) - Cliente 22 (PJ), Veículo 21 (PJB2001)
-- Status: EM ATENDIMENTO
INSERT INTO ordem_de_servico (idCliente, idVeiculo, Descricao, Status) VALUES
(22, 21, 'Alinhamento e troca de pneus', 'EM ATENDIMENTO');
-- Serviços (idServico = 2: Alinhamento, 120.00; idServico = 6: Troca Pneu, 80.00)
INSERT INTO os_servico (idOrdem, idServico, ValorTotal) VALUES
(4, 2, 120.00),
(4, 6, 80.00);
-- Peças (idPeca = 5: Pneu, Qtd: 4, 350.00)
INSERT INTO os_peca (idOrdem, idPeca, Quantidade, ValorUnitario) VALUES
(4, 5, 4, 350.00);
-- Mecânico (idMecanico = 4: Fernando fez os dois serviços)
INSERT INTO os_servico_mecanico (idMecanico, idOrdem, idServico) VALUES
(4, 4, 2),
(4, 4, 6);
-- Pagamento (Pendente)
INSERT INTO pagamento (idOrdem, Metodo, Valor, Status) VALUES
(4, 'CRÉDITO', 1600.00, 'PENDENTE'); -- 200 (serviços) + 1400 (peças)


-- OS 5 (idOrdem = 5) - Cliente 1 (PF), Veículo 1 (ABC1111)
-- Status: FINALIZADO (e pago)
INSERT INTO ordem_de_servico (idCliente, idVeiculo, Descricao, Status, DataFim, ValorTotalPecas, ValorTotalServicos, ValorTotal) VALUES
(1, 1, 'Troca de óleo de rotina.', 'FINALIZADO', '2025-10-20 10:00:00', 265.00, 150.00, 415.00);
-- Serviços (idServico = 1: Troca de Óleo, 150.00)
INSERT INTO os_servico (idOrdem, idServico, ValorTotal) VALUES
(5, 1, 150.00);
-- Peças (idPeca = 1: Filtro, Qtd: 1, 45.00; idPeca = 2: Óleo, Qtd: 4, 55.00)
INSERT INTO os_peca (idOrdem, idPeca, Quantidade, ValorUnitario) VALUES
(5, 1, 1, 45.00),
(5, 2, 4, 55.00);
-- Mecânico (idMecanico = 5: Jorge)
INSERT INTO os_servico_mecanico (idMecanico, idOrdem, idServico) VALUES
(5, 5, 1);
-- Pagamento (Aprovado)
INSERT INTO pagamento (idOrdem, Metodo, Valor, Status, DataPagamento) VALUES
(5, 'PIX', 415.00, 'APROVADO', '2025-10-20 10:05:00');


-- OS 6 (idOrdem = 6) - Cliente 2 (PF), Veículo 2 (BBB2222)
-- Status: FINALIZADO
INSERT INTO ordem_de_servico (idCliente, idVeiculo, Descricao, Status, DataFim, ValorTotalPecas, ValorTotalServicos, ValorTotal) VALUES
(2, 2, 'Veículo puxando para a direita.', 'FINALIZADO', '2025-10-21 14:00:00', 0.00, 120.00, 120.00);
-- Serviços (idServico = 2: Alinhamento, 120.00)
INSERT INTO os_servico (idOrdem, idServico, ValorTotal) VALUES
(6, 2, 120.00);
-- Sem Peças
-- Mecânico (idMecanico = 1: Carlos)
INSERT INTO os_servico_mecanico (idMecanico, idOrdem, idServico) VALUES
(1, 6, 2);
-- Pagamento (Aprovado)
INSERT INTO pagamento (idOrdem, Metodo, Valor, Status, DataPagamento) VALUES
(6, 'DÉBITO', 120.00, 'APROVADO', '2025-10-21 14:05:00');


-- OS 7 (idOrdem = 7) - Cliente 21 (PJ), Veículo 17 (PJA1002)
-- Status: EM ATENDIMENTO
INSERT INTO ordem_de_servico (idCliente, idVeiculo, Descricao, Status) VALUES
(21, 17, 'Freios do caminhão com ruído.', 'EM ATENDIMENTO');
-- Serviços (idServico = 3: Troca Pastilha, 250.00)
INSERT INTO os_servico (idOrdem, idServico, ValorTotal) VALUES
(7, 3, 250.00);
-- Peças (idPeca = 3: Pastilha, Qtd: 2, 120.00)
INSERT INTO os_peca (idOrdem, idPeca, Quantidade, ValorUnitario) VALUES
(7, 3, 2, 120.00);
-- Mecânicos (idMecanico = 1 e 3 no mesmo serviço)
INSERT INTO os_servico_mecanico (idMecanico, idOrdem, idServico) VALUES
(1, 7, 3),
(3, 7, 3);
-- Pagamento (Pendente)
INSERT INTO pagamento (idOrdem, Metodo, Valor, Status) VALUES
(7, 'DÉBITO', 490.00, 'PENDENTE'); -- 250 (serviço) + 240 (peças)


-- OS 8 (idOrdem = 8) - Cliente 8 (PF), Veículo 10 (JJJ1010)
-- Status: FINALIZADO
INSERT INTO ordem_de_servico (idCliente, idVeiculo, Descricao, Status, DataFim, ValorTotalPecas, ValorTotalServicos, ValorTotal) VALUES
(8, 10, 'Revisão completa de 50.000km.', 'FINALIZADO', '2025-10-22 18:00:00', 385.00, 600.00, 985.00);
-- Serviços (idServico = 5: Revisão, 600.00)
INSERT INTO os_servico (idOrdem, idServico, ValorTotal) VALUES
(8, 5, 600.00);
-- Peças (Filtro, Óleo, Velas)
INSERT INTO os_peca (idOrdem, idPeca, Quantidade, ValorUnitario) VALUES
(8, 1, 1, 45.00), -- Filtro de Óleo
(8, 2, 4, 55.00), -- Óleo 5W30 (4L)
(8, 4, 4, 30.00); -- Velas (4)
-- Mecânico (idMecanico = 5: Jorge)
INSERT INTO os_servico_mecanico (idMecanico, idOrdem, idServico) VALUES
(5, 8, 5);
-- Pagamento (Aprovado)
INSERT INTO pagamento (idOrdem, Metodo, Valor, Status, DataPagamento) VALUES
(8, 'CRÉDITO', 985.00, 'APROVADO', '2025-10-22 18:02:00');


-- OS 9 (idOrdem = 9) - Cliente 30 (PJ), Veículo 25 (PJC3003)
-- Status: EM ATENDIMENTO
INSERT INTO ordem_de_servico (idCliente, idVeiculo, Descricao, Status) VALUES
(30, 25, 'Caminhonete falhando. Verificar injeção e trocar óleo.', 'EM ATENDIMENTO');
-- Serviços (idServico = 4: Diag. Injeção, 90.00; idServico = 1: Troca de Óleo, 150.00)
INSERT INTO os_servico (idOrdem, idServico, ValorTotal) VALUES
(9, 1, 150.00),
(9, 4, 90.00);
-- Peças (para a troca de óleo)
INSERT INTO os_peca (idOrdem, idPeca, Quantidade, ValorUnitario) VALUES
(9, 1, 1, 45.00), -- Filtro de Óleo
(9, 2, 5, 55.00); -- Óleo 5W30 (5L para caminhonete)
-- Mecânico (idMecanico = 2: Bruno)
INSERT INTO os_servico_mecanico (idMecanico, idOrdem, idServico) VALUES
(2, 9, 1),
(2, 9, 4);
-- Pagamento (Pendente)
INSERT INTO pagamento (idOrdem, Metodo, Valor, Status) VALUES
(9, 'PIX', 560.00, 'PENDENTE'); -- 240 (serviços) + 320 (peças)


-- OS 10 (idOrdem = 10) - Cliente 9 (PF), Veículo 12 (LLL1313)
-- Status: FINALIZADO
INSERT INTO ordem_de_servico (idCliente, idVeiculo, Descricao, Status, DataFim, ValorTotalPecas, ValorTotalServicos, ValorTotal) VALUES
(9, 12, 'Trocar 2 pneus dianteiros.', 'FINALIZADO', '2025-10-23 09:30:00', 700.00, 80.00, 780.00);
-- Serviços (idServico = 6: Troca de Pneus, 80.00)
INSERT INTO os_servico (idOrdem, idServico, ValorTotal) VALUES
(10, 6, 80.00);
-- Peças (2 Pneus)
INSERT INTO os_peca (idOrdem, idPeca, Quantidade, ValorUnitario) VALUES
(10, 5, 2, 350.00); -- Pneu Aro 15
-- Mecânico (idMecanico = 4: Fernando)
INSERT INTO os_servico_mecanico (idMecanico, idOrdem, idServico) VALUES
(4, 10, 6);
-- Pagamento (Aprovado)
INSERT INTO pagamento (idOrdem, Metodo, Valor, Status, DataPagamento) VALUES
(10, 'CRÉDITO', 780.00, 'APROVADO', '2025-10-23 09:35:00');


-- OS 11 (idOrdem = 11) - Cliente 21 (PJ), Veículo 18 (PJA1003)
-- Status: EM ATENDIMENTO
INSERT INTO ordem_de_servico (idCliente, idVeiculo, Descricao, Status) VALUES
(21, 18, 'Troca de óleo e filtro do caminhão.', 'EM ATENDIMENTO');
-- Serviços (idServico = 1: Troca de Óleo, 150.00)
INSERT INTO os_servico (idOrdem, idServico, ValorTotal) VALUES
(11, 1, 150.00);
-- Peças (óleo e filtro)
INSERT INTO os_peca (idOrdem, idPeca, Quantidade, ValorUnitario) VALUES
(11, 1, 2, 45.00), -- 2 Filtros de Óleo para caminhão
(11, 2, 8, 55.00); -- 8L de Óleo
-- Mecânico (idMecanico = 1: Carlos)
INSERT INTO os_servico_mecanico (idMecanico, idOrdem, idServico) VALUES
(1, 11, 1);
-- Pagamento (Pendente)
INSERT INTO pagamento (idOrdem, Metodo, Valor, Status) VALUES
(11, 'PIX', 680.00, 'PENDENTE'); -- 150 (serviço) + 530 (peças)


-- OS 12 (idOrdem = 12) - Cliente 7 (PF), Veículo 8 (HHH8888)
-- Status: AGUARDANDO VISTORIA
INSERT INTO ordem_de_servico (idCliente, idVeiculo, Descricao, Status) VALUES
(7, 8, 'Carro não liga, verificar parte elétrica.', 'AGUARDANDO VISTORIA');
-- Serviços (idServico = 4: Diagnóstico, 90.00)
INSERT INTO os_servico (idOrdem, idServico, ValorTotal) VALUES
(12, 4, 90.00);
-- Sem Peças
-- Mecânico (idMecanico = 3: Ricardo)
INSERT INTO os_servico_mecanico (idMecanico, idOrdem, idServico) VALUES
(3, 12, 4);
-- Pagamento (Pendente)
INSERT INTO pagamento (idOrdem, Metodo, Valor, Status) VALUES
(12, 'PIX', 90.00, 'PENDENTE');


-- OS 13 (idOrdem = 13) - Cliente 22 (PJ), Veículo 22 (PJB2002)
-- Status: FINALIZADO
INSERT INTO ordem_de_servico (idCliente, idVeiculo, Descricao, Status, DataFim, ValorTotalPecas, ValorTotalServicos, ValorTotal) VALUES
(22, 22, 'Alinhamento e balanceamento da frota.', 'FINALIZADO', '2025-10-20 17:00:00', 0.00, 120.00, 120.00);
-- Serviços (idServico = 2: Alinhamento, 120.00)
INSERT INTO os_servico (idOrdem, idServico, ValorTotal) VALUES
(13, 2, 120.00);
-- Sem Peças
-- Mecânico (idMecanico = 2: Bruno)
INSERT INTO os_servico_mecanico (idMecanico, idOrdem, idServico) VALUES
(2, 13, 2);
-- Pagamento (Aprovado)
INSERT INTO pagamento (idOrdem, Metodo, Valor, Status, DataPagamento) VALUES
(13, 'DÉBITO', 120.00, 'APROVADO', '2025-10-20 17:01:00');


-- OS 14 (idOrdem = 14) - Cliente 10 (PF), Veículo 15 (NNN1515)
-- Status: EM ATENDIMENTO
INSERT INTO ordem_de_servico (idCliente, idVeiculo, Descricao, Status) VALUES
(10, 15, 'Revisão completa e troca de freios dianteiros.', 'EM ATENDIMENTO');
-- Serviços (idServico = 5: Revisão, 600.00; idServico = 3: Troca de Pastilhas, 250.00)
INSERT INTO os_servico (idOrdem, idServico, ValorTotal) VALUES
(14, 3, 250.00),
(14, 5, 600.00);
-- Peças (para revisão e freios)
INSERT INTO os_peca (idOrdem, idPeca, Quantidade, ValorUnitario) VALUES
(14, 1, 1, 45.00),   -- Filtro de Óleo
(14, 2, 4, 55.00),   -- Óleo
(14, 3, 1, 120.00),  -- Pastilha de Freio
(14, 4, 4, 30.00);   -- Velas
-- Mecânicos (Dois mecânicos em serviços diferentes)
INSERT INTO os_servico_mecanico (idMecanico, idOrdem, idServico) VALUES
(3, 14, 3), -- Ricardo nos freios
(5, 14, 5); -- Jorge na revisão
-- Pagamento (Pendente)
INSERT INTO pagamento (idOrdem, Metodo, Valor, Status) VALUES
(14, 'CRÉDITO', 1355.00, 'PENDENTE'); -- 850 (serviços) + 505 (peças)


-- OS 15 (idOrdem = 15) - Cliente 4 (PF), Veículo 4 (DDD4444)
-- Status: FINALIZADO
INSERT INTO ordem_de_servico (idCliente, idVeiculo, Descricao, Status, DataFim, ValorTotalPecas, ValorTotalServicos, ValorTotal) VALUES
(4, 4, 'Trocar os 4 pneus da caminhonete.', 'FINALIZADO', '2025-10-19 11:00:00', 1400.00, 80.00, 1480.00);
-- Serviços (idServico = 6: Troca de Pneus, 80.00)
INSERT INTO os_servico (idOrdem, idServico, ValorTotal) VALUES
(15, 6, 80.00);
-- Peças (4 Pneus)
INSERT INTO os_peca (idOrdem, idPeca, Quantidade, ValorUnitario) VALUES
(15, 5, 4, 350.00);
-- Mecânico (idMecanico = 4: Fernando)
INSERT INTO os_servico_mecanico (idMecanico, idOrdem, idServico) VALUES
(4, 15, 6);
-- Pagamento (Aprovado)
INSERT INTO pagamento (idOrdem, Metodo, Valor, Status, DataPagamento) VALUES
(15, 'PIX', 1480.00, 'APROVADO', '2025-10-19 11:02:00');