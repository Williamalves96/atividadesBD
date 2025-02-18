CREATE DATABASE app  ;
USE  app ;

CREATE TABLE cliente (
 id_cliente INT NOT NULL AUTO_INCREMENT,
 nome_cliente  VARCHAR(45),
 cpf_cliente  BIGINT,
PRIMARY KEY (id_cliente)

);

CREATE TABLE motorista (
 id_motorista INT NOT NULL AUTO_INCREMENT,
 nome_motorista  VARCHAR(45),
 cpf_motorista  BIGINT,
 dataNascimentoMotorista DATE,
 
PRIMARY KEY (id_motorista) 

);


CREATE TABLE veiculo (
id_veiculo INT NOT NULL AUTO_INCREMENT,
placa VARCHAR(45),
modelo  VARCHAR(45),
cor VARCHAR(45),
ano INT ,

PRIMARY KEY (id_veiculo)
);

ALTER TABLE veiculo 
ADD COLUMN motorista_id INT;

ALTER TABLE veiculo 
ADD fOREIGN KEY (motorista_id)
REFERENCES motorista (id_motorista );


CREATE TABLE viagem(
id_viagem INT NOT NULL AUTO_INCREMENT,
data_viagem DATE,
horario_viagem TIME,
valor DECIMAL (8,2),
origem VARCHAR (45),
destino VARCHAR(45),

PRIMARY KEY (id_viagem)
);

ALTER TABLE viagem 
ADD COLUMN motorista_id INT;

ALTER TABLE viagem 
ADD fOREIGN KEY (motorista_id)
REFERENCES motorista (id_motorista );

ALTER TABLE viagem 
ADD COLUMN cliente_id INT;

ALTER TABLE viagem 
ADD fOREIGN KEY (cliente_id)
REFERENCES cliente (id_cliente );
