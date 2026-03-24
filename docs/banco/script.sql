

CREATE DATABASE impacto_solidario;

CREATE TABLE doadores (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL,
    contato VARCHAR(30),
    endereco VARCHAR(50)
);


CREATE TABLE beneficiarios (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL,
    contato VARCHAR(30)
);

CREATE TABLE itens (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome_item VARCHAR(50) NOT NULL,
    quantidade INT NOT NULL,
    status VARCHAR(50) DEFAULT 'Disponivel',
    id_doador INT,
    FOREIGN KEY (id_doador) REFERENCES doadores(id)
);


CREATE TABLE solicitacoes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    descricao VARCHAR(200) NOT NULL,
    status VARCHAR(50) DEFAULT 'Pendente',
    id_beneficiario INT,
    FOREIGN KEY (id_beneficiario) REFERENCES beneficiarios(id)
);
