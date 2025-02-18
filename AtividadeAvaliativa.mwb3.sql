CREATE DATABASE hospital;
USE hospital;

CREATE TABLE  clinica(
id_clinica INT NOT NULL AUTO_INCREMENT , 
nome_clinica VARCHAR(45),
cnpj BIGINT(14),
PRIMARY KEY (id_clinica)
);


CREATE TABLE  quarto(
id_quarto INT NOT NULL AUTO_INCREMENT , 
numero_quarto INT,

PRIMARY KEY (id_quarto)
);


CREATE TABLE  medico(
id_medico INT NOT NULL AUTO_INCREMENT , 
nome_medico VARCHAR(45),
crm BIGINT(9),
salario DECIMAL(8,2),
especialidade VARCHAR(45),

PRIMARY KEY (id_medico)
);

CREATE TABLE  paciente(
id_paciente INT NOT NULL AUTO_INCREMENT , 
nome_paciente VARCHAR(45),
rg BIGINT(11),
data_nascimento_paciente DATE , 

PRIMARY KEY (id_sala)
);