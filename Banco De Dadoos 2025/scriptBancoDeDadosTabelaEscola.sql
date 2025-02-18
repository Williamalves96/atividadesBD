CREATE DATABASE escola;
USE escola;

CREATE TABLE  sala(
id_sala INT NOT NULL AUTO_INCREMENT , 
nome_sala VARCHAR(45),
capacidade_sala INT,
PRIMARY KEY (id_sala)
);

CREATE TABLE turma (
id_turma INT NOT NULL AUTO_INCREMENT ,
nome_turma VARCHAR(45),
periodo VARCHAR(45),
PRIMARY KEY (id_turma)
);
 
 ALTER TABLE turma
 ADD COLUMN sala_id INT,
 ADD FOREIGN KEY (sala_id)
 REFERENCES sala (id_sala);

CREATE TABLE professor (
id_professor INT NOT NULL AUTO_INCREMENT,
nome_professor VARCHAR(45),
formaAcademProf VARCHAR(45),
PRIMARY KEY (id_professor)
);

 ALTER TABLE professor
 ADD COLUMN turma_id INT,
 ADD FOREIGN KEY (turma_id)
 REFERENCES turma (id_turma);


CREATE TABLE aulas (
id_aulas INT NOT NULL AUTO_INCREMENT ,
nome_aulas VARCHAR(45),
PRIMARY KEY (id_aulas)
);

 ALTER TABLE aulas
 ADD COLUMN professor_id INT,
 ADD FOREIGN KEY (professor_id)
 REFERENCES professor (id_professor);
 
 ALTER TABLE aulas
 RENAME  TO aula;
