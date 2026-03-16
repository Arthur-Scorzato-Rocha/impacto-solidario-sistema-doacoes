-- =====================================================
-- Banco de Dados: Impacto Solidário
-- Sistema acadêmico para gerenciamento de doações
-- =====================================================

-- Criação do banco de dados
CREATE DATABASE impacto_solidario;

-- Dependendo do SGBD utilizado, pode ser necessário usar:
-- USE impacto_solidario;


-- =====================================================
-- Tabela: Doadores
-- Armazena as pessoas que realizam doações
-- =====================================================
CREATE TABLE doadores (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    contato VARCHAR(100),
    endereco VARCHAR(150)
);


-- =====================================================
-- Tabela: Beneficiários
-- Armazena as pessoas que solicitam ajuda
-- =====================================================
CREATE TABLE beneficiarios (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    contato VARCHAR(100)
);


-- =====================================================
-- Tabela: Itens
-- Armazena os itens disponíveis para doação
-- Cada item está vinculado a um doador
-- =====================================================
CREATE TABLE itens (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome_item VARCHAR(100) NOT NULL,
    quantidade INT NOT NULL,
    status VARCHAR(50) DEFAULT 'Disponivel',
    id_doador INT,
    FOREIGN KEY (id_doador) REFERENCES doadores(id)
);


-- =====================================================
-- Tabela: Solicitações
-- Registra os pedidos de ajuda feitos pelos beneficiários
-- =====================================================
CREATE TABLE solicitacoes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    descricao VARCHAR(200) NOT NULL,
    status VARCHAR(50) DEFAULT 'Pendente',
    id_beneficiario INT,
    FOREIGN KEY (id_beneficiario) REFERENCES beneficiarios(id)
);
