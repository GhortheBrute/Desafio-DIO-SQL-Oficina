DROP SCHEMA IF EXISTS oficina;

CREATE SCHEMA IF NOT EXISTS oficina DEFAULT CHARACTER SET utf8;

USE oficina;

CREATE TABLE IF NOT EXISTS montadora (
    idMontadora INT PRIMARY KEY AUTO_INCREMENT,
    RazaoSocial VARCHAR(255) NOT NULL
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS servico (
    idServico INT PRIMARY KEY AUTO_INCREMENT,
    Descricao VARCHAR(255) NOT NULL,
    Valor DECIMAL(10,2) NOT NULL
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS contato (
    idContato INT PRIMARY KEY AUTO_INCREMENT,
    Telefone CHAR(20) NOT NULL,
    Email VARCHAR(255) NOT NULL
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS endereco (
    idEndereco INT PRIMARY KEY AUTO_INCREMENT,
    Rua VARCHAR(45) NOT NULL,
    Numero INT NULL,
    Bairro VARCHAR(45) NOT NULL,
    Cidade VARCHAR(45) NOT NULL,
    Estado CHAR(2) NOT NULL,
    CEP CHAR(8) NOT NULL,
    Complemento VARCHAR(45) NULL
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS cliente (
    idCliente INT PRIMARY KEY AUTO_INCREMENT,
    Tipo ENUM('PF','PJ') NOT NULL,
    idEndereco INT NOT NULL,
    idContato INT NOT NULL,
    DataCadastro TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_cliente_endereco1
        FOREIGN KEY (idEndereco) REFERENCES endereco (idEndereco),
    CONSTRAINT fk_cliente_contato1
        FOREIGN KEY (idContato) REFERENCES contato (idContato)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS cliente_pf (
    idCliente INT PRIMARY KEY,
    CPF CHAR(11) NOT NULL UNIQUE,
    PNome VARCHAR(10) NOT NULL,
    MNome VARCHAR(10) NOT NULL,
    UNome VARCHAR(20) NOT NULL,
    DataNascimento DATE NOT NULL,
    CONSTRAINT fk_cliente_pf_cliente1
       FOREIGN KEY (idCliente) REFERENCES cliente (idCliente)
            ON DELETE CASCADE
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS cliente_pj (
    idCliente INT PRIMARY KEY,
    CNPJ CHAR(14) NOT NULL UNIQUE,
    RazaoSocial VARCHAR(255) NOT NULL,
    NomeFantasia VARCHAR(255) NOT NULL,
    CONSTRAINT fk_cliente_pj_cliente1
       FOREIGN KEY (idCliente) REFERENCES cliente (idCliente)
           ON DELETE CASCADE
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS veiculo (
    idVeiculo INT PRIMARY KEY AUTO_INCREMENT,
    idCliente INT NOT NULL,
    idFabricante INT NOT NULL,
    AnoFabricacao YEAR NOT NULL,
    AnoModelo YEAR NOT NULL,
    Tipo ENUM('CARRO','CAMINHONETE','CAMINHÃO') NOT NULL,
    Placa CHAR(7) NOT NULL UNIQUE,
    Cor VARCHAR(20) NOT NULL,
    CONSTRAINT fk_veiculo_fabricante1
        FOREIGN KEY (idFabricante) REFERENCES montadora (idMontadora),
    CONSTRAINT fk_veiculo_cliente1
        FOREIGN KEY (idCliente) REFERENCES cliente (idCliente)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS ordem_de_servico (
    idOrdem INT PRIMARY KEY AUTO_INCREMENT,
    idCliente INT NOT NULL,
    idVeiculo INT NOT NULL,
    Descricao TEXT NOT NULL,
    Status ENUM('AGUARDANDO VISTORIA', 'EM ATENDIMENTO', 'AGUARDANDO PEÇAS', 'FINALIZADO') NOT NULL DEFAULT 'AGUARDANDO VISTORIA',
    DataInicio TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    DataFim TIMESTAMP,
    ValorTotalPecas DECIMAL(10,2) DEFAULT 0.00,
    ValorTotalServicos DECIMAL(10,2)  DEFAULT 0.00,
    ValorTotal DECIMAL(10,2) DEFAULT 0.00,
    CONSTRAINT fk_ordem_cliente1
        FOREIGN KEY (idCliente) REFERENCES cliente (idCliente),
    CONSTRAINT fk_ordem_veiculo1
        FOREIGN KEY (idVeiculo) REFERENCES veiculo (idVeiculo)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS peca (
    idPeca INT PRIMARY KEY AUTO_INCREMENT,
    Descricao VARCHAR(100) NOT NULL,
    Marca VARCHAR(100) NULL,
    ValorUnitario DECIMAL(10,2) NOT NULL
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS mecanico (
    idMecanico INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(255) NOT NULL,
    idContato INT,
    CONSTRAINT fk_mecanico_contato1
        FOREIGN KEY (idContato) REFERENCES contato (idContato)
            ON DELETE SET NULL
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS pagamento (
    idPagamento INT PRIMARY KEY AUTO_INCREMENT,
    idOrdem INT NOT NULL,
    Metodo ENUM('CRÉDITO','DÉBITO','PIX','DINHEIRO') NOT NULL,
    Valor DECIMAL(10,2) NOT NULL,
    Status ENUM('PENDENTE','APROVADO','RECUSADO','ESTORNADO') NOT NULL DEFAULT 'PENDENTE',
    DataPagamento TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_pagamento_ordem1
        FOREIGN KEY (idOrdem) REFERENCES ordem_de_servico (idOrdem)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS os_servico (
    idOrdem INT NOT NULL,
    idServico INT NOT NULL,
    ValorTotal DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (idOrdem, idServico),
    CONSTRAINT fk_os_servico_ordem1
        FOREIGN KEY (idOrdem) REFERENCES ordem_de_servico (idOrdem),
    CONSTRAINT fk_os_servico_servico1
        FOREIGN KEY (idServico) REFERENCES servico (idServico)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS os_servico_mecanico (
    idMecanico INT NOT NULL,
    idOrdem INT NOT NULL,
    idServico INT NOT NULL,
    PRIMARY KEY (idOrdem, idServico, idMecanico),
    CONSTRAINT fk_osm_mecanico1
        FOREIGN KEY (idMecanico) REFERENCES mecanico (idMecanico),
    CONSTRAINT fk_osm_os_servico
        FOREIGN KEY (idOrdem, idServico) REFERENCES os_servico (idOrdem, idServico)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS os_peca (
    idOrdem INT NOT NULL,
    idPeca INT NOT NULL,
    Quantidade INT NOT NULL DEFAULT 1,
    ValorUnitario DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (idPeca, idOrdem),
    CONSTRAINT fk_os_peca_ordem1
        FOREIGN KEY (idOrdem) REFERENCES ordem_de_servico (idOrdem),
    CONSTRAINT fk_os_peca_peca1
        FOREIGN KEY (idPeca) REFERENCES peca (idPeca)
) ENGINE = InnoDB;