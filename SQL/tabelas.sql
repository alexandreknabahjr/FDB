-- Apaga a visão InfoMedico:
DROP VIEW IF EXISTS InfoMedico;
-- Apaga a tabela AGENDAMENTOS:
DROP TABLE IF EXISTS AGENDAMENTOS;
-- Apaga a tabela TRATAMENTOS (OK):
DROP TABLE IF EXISTS TRATAMENTOS;
-- Apaga a tabela POSSES (OK):
DROP TABLE IF EXISTS POSSES;
-- Apaga a tabela ATENDIMENTOS (OK):
DROP TABLE IF EXISTS ATENDIMENTOS;
-- Apaga a tabela BUSCAS (OK):
DROP TABLE IF EXISTS BUSCAS;
-- Apaga a tabela SERVICOS (OK):
DROP TABLE IF EXISTS SERVICOS;
-- Apaga a tabela PACIENTES (OK):
DROP TABLE IF EXISTS PACIENTES;
-- Apaga a tabela DUVIDAS (OK):
DROP TABLE IF EXISTS DUVIDAS;
-- Apaga a tabela MEDICOS (OK):
DROP TABLE IF EXISTS MEDICOS;
-- Apaga a tabela ESPECIALIDADES (OK):
DROP TABLE IF EXISTS ESPECIALIDADES;
-- Apaga a tabela USUARIOS (OK):
DROP TABLE IF EXISTS USUARIOS;
-- Apaga a tabela CONVENIOS (OK):
DROP TABLE IF EXISTS CONVENIOS;
-- Apaga a tabela CONSULTORIOS (OK):
DROP TABLE IF EXISTS CONSULTORIOS;
-- Apaga a tabela DOENCAS (OK):
DROP TABLE IF EXISTS DOENCAS;

-- Criação da tabela USUARIOS (entidade GENERALIZADA):
CREATE TABLE USUARIOS (
	email VARCHAR(100) PRIMARY KEY NOT NULL,
    CPF VARCHAR(20) NOT NULL,
    RG VARCHAR(20) NOT NULL,
    nome VARCHAR(350) NOT NULL,
    senha VARCHAR(50) NOT NULL,
	UNIQUE (email, CPF, RG)
);

-- Criação da tabela ESPECIALIDADES:
CREATE TABLE ESPECIALIDADES (
	id_especialidade INT PRIMARY KEY,
	nome_espec VARCHAR(40) NOT NULL
);

-- Criação da tabela MEDICOS (entidade ESPECIALIZADA de USUARIOS):
CREATE TABLE MEDICOS (
	crm VARCHAR(15) PRIMARY KEY NOT NULL,
	biografia VARCHAR(250) NOT NULL,
	idiomas VARCHAR(100) NOT NULL,
	email_med VARCHAR(100) UNIQUE NOT NULL,
	id_espec_med INT NOT NULL,
	FOREIGN KEY (email_med) REFERENCES USUARIOS(email)
	ON DELETE CASCADE
	ON UPDATE CASCADE,
	FOREIGN KEY (id_espec_med) REFERENCES ESPECIALIDADES(id_especialidade)
);

-- Criação da tabela PACIENTES (entidade ESPECIALIZADA de USUARIOS):
CREATE TABLE PACIENTES (
    id_paciente INT PRIMARY KEY,
    data_nasc DATE NOT NULL,
    telefone_pac VARCHAR(20) UNIQUE NOT NULL,
	genero VARCHAR(30) NOT NULL,
    email_pac VARCHAR(100) UNIQUE NOT NULL,
	FOREIGN KEY (email_pac) REFERENCES USUARIOS(email)
	ON UPDATE CASCADE
	ON DELETE CASCADE
);

-- Criação da tabela CONVENIOS:
CREATE TABLE CONVENIOS (
	id_convenio INT PRIMARY KEY,
	nome_convenio VARCHAR(40) NOT NULL
);

-- Criação da tabela BUSCAS:
CREATE TABLE BUSCAS (
	id_especialidade INT NOT NULL,
	paciente INT NOT NULL,
	email_pac VARCHAR(100) NOT NULL,
	buscas_serial SERIAL,
	PRIMARY KEY (paciente, id_especialidade, buscas_serial),
	FOREIGN KEY (id_especialidade) REFERENCES ESPECIALIDADES(id_especialidade),
	FOREIGN KEY (paciente) REFERENCES PACIENTES(id_paciente)
	ON DELETE CASCADE,
	FOREIGN KEY (email_pac) REFERENCES PACIENTES(email_pac)
	ON UPDATE CASCADE
	ON DELETE CASCADE
);

-- Criação da tabela ATENDIMENTOS:
CREATE TABLE ATENDIMENTOS (
	id_convenio INT NOT NULL,
	crm_med VARCHAR(15) NOT NULL,
	email_med VARCHAR(100) NOT NULL,
	PRIMARY KEY (id_convenio, crm_med),
	FOREIGN KEY (id_convenio) REFERENCES CONVENIOS(id_convenio),
	FOREIGN KEY (crm_med) REFERENCES MEDICOS(crm)
	ON DELETE CASCADE,
	FOREIGN KEY (email_med) REFERENCES MEDICOS(email_med)
	ON DELETE CASCADE
	ON UPDATE CASCADE
);

-- Criação da tabela CONSULTORIOS:
CREATE TABLE CONSULTORIOS (
	endereco VARCHAR(100) NOT NULL,
	telefone_cons VARCHAR(20) UNIQUE NOT NULL,
	cidade VARCHAR(40) NOT NULL,
	UF VARCHAR(2) NOT NULL,
	PRIMARY KEY (endereco, cidade, UF)
);

-- Criação da tabela POSSES:
CREATE TABLE POSSES (
	crm_med VARCHAR(15) NOT NULL,
	email_med VARCHAR(100) NOT NULL,
	endereco_cons VARCHAR(100) NOT NULL,
	cidade VARCHAR(40) NOT NULL,
	UF VARCHAR(2) NOT NULL,
	PRIMARY KEY (crm_med, endereco_cons, cidade, UF),
	FOREIGN KEY (crm_med) REFERENCES MEDICOS(crm)
	ON DELETE CASCADE,
	FOREIGN KEY (email_med) REFERENCES MEDICOS(email_med)
	ON DELETE CASCADE
	ON UPDATE CASCADE,
	FOREIGN KEY (endereco_cons, cidade, UF) REFERENCES CONSULTORIOS(endereco, cidade, UF)
);

-- Criação da tabela DOENCAS:
CREATE TABLE DOENCAS (
	cid VARCHAR(15) PRIMARY KEY NOT NULL,
	nome_doenca VARCHAR(90) NOT NULL,
	descricao_doenca VARCHAR(250)
);

-- Criação da tabela TRATAMENTOS:
CREATE TABLE TRATAMENTOS (
	cid_doenca VARCHAR(15) NOT NULL,
	crm_med VARCHAR(15) NOT NULL,
	email_med VARCHAR(100) NOT NULL,
	PRIMARY KEY (cid_doenca, crm_med),
	FOREIGN KEY (cid_doenca) REFERENCES DOENCAS(cid),
	FOREIGN KEY (crm_med) REFERENCES MEDICOS(crm)
	ON DELETE CASCADE,
	FOREIGN KEY (email_med) REFERENCES MEDICOS(email_med)
	ON DELETE CASCADE
	ON UPDATE CASCADE
);

-- Criação da tabela SERVICOS:
CREATE TABLE SERVICOS (
	nome_serv VARCHAR(80) NOT NULL,
	preco_serv NUMERIC, 
	crm_med VARCHAR(15) NOT NULL,
	email_med VARCHAR(100) NOT NULL,
	PRIMARY KEY (crm_med, nome_serv),
	FOREIGN KEY (crm_med) REFERENCES MEDICOS(crm)
	ON DELETE CASCADE,
	FOREIGN KEY (email_med) REFERENCES MEDICOS(email_med)
	ON DELETE CASCADE
	ON UPDATE CASCADE
);

-- Criação da tabela DUVIDAS:
CREATE TABLE DUVIDAS (
	id_duvida SERIAL PRIMARY KEY,
	texto_duvida VARCHAR(1000) NOT NULL,
	texto_resposta VARCHAR(1000) NOT NULL,
	crm_med VARCHAR(15) NOT NULL,
	email_med VARCHAR(100) NOT NULL,
	FOREIGN KEY (crm_med) REFERENCES MEDICOS(crm)
	ON DELETE CASCADE,
	FOREIGN KEY (email_med) REFERENCES MEDICOS(email_med)
	ON DELETE CASCADE
	ON UPDATE CASCADE
);	

-- Criação da tabela AGENDAMENTOS:
CREATE TABLE AGENDAMENTOS (
    data_agenda TIMESTAMP NOT NULL,
    paciente INT NOT NULL,
    medico VARCHAR(15) NOT NULL,
	email_pac VARCHAR(100) NOT NULL,
	email_med VARCHAR(100) NOT NULL,
    PRIMARY KEY (data_agenda, paciente, medico),
	UNIQUE (data_agenda, paciente),
	UNIQUE (data_agenda, medico),
    FOREIGN KEY (paciente) REFERENCES PACIENTES(id_paciente)
	ON DELETE CASCADE,
    FOREIGN KEY (medico) REFERENCES MEDICOS(crm)
	ON DELETE CASCADE,
	FOREIGN KEY (email_pac) REFERENCES PACIENTES(email_pac)
	ON UPDATE CASCADE
	ON DELETE CASCADE,
	FOREIGN KEY (email_med) REFERENCES MEDICOS(email_med)
	ON DELETE CASCADE
	ON UPDATE CASCADE
);


-- Alterações nas tabelas:

-- a) Possibilidades para o atributo 'genero' da tabela PACIENTES:
ALTER TABLE PACIENTES
ADD CONSTRAINT CK_GENERO
CHECK (genero IN ('Masculino', 'Feminino', 'Não-Binário', 'Outro'));

-- b) Os pacientes nasceram (no passado), é claro...
ALTER TABLE PACIENTES
ADD CONSTRAINT CK_ANO_NASCIMENTO_VALIDO
CHECK (EXTRACT(YEAR FROM data_nasc) <= EXTRACT(YEAR FROM current_date));

-- c) Convênios válidos na Doctoralia Simples:
ALTER TABLE CONVENIOS
ADD CONSTRAINT CHK_NOME_CONVENIO
CHECK (
    (id_convenio = 0 AND nome_convenio = 'Unimed') OR
    (id_convenio = 1 AND nome_convenio = 'Bradesco Saúde') OR
    (id_convenio = 2 AND nome_convenio = 'SulAmérica') OR
    (id_convenio = 3 AND nome_convenio = 'Amil') OR
    (id_convenio = 4 AND nome_convenio = 'Golden Cross') OR
    (id_convenio = 5 AND nome_convenio = 'IPE')
);

-- d) Especialidades válidas na Doctoralia Simples:
ALTER TABLE ESPECIALIDADES
ADD CONSTRAINT CHK_NOME_ESPEC
CHECK (
    (id_especialidade = 0 AND nome_espec = 'Ortopedista - Traumatologista') OR
    (id_especialidade = 1 AND nome_espec = 'Dermatologista') OR
    (id_especialidade = 2 AND nome_espec = 'Endocrinologista') OR
    (id_especialidade = 3 AND nome_espec = 'Pediatra') OR
    (id_especialidade = 4 AND nome_espec = 'Geriatra')
);