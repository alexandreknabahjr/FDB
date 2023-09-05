-- A visão (não materializada) InfoMedico projeta o nome do médico, seu CRM, sua especialidade
-- e o endereço do seu consultório. Somente são projetados aqueles médicos que tem consultório cadastrado.
-- Observação: é possível que esse médico tenha mais de um consultório.

CREATE OR REPLACE VIEW InfoMedico AS
SELECT
	USUARIOS.nome,
	MEDICOS.crm,
	ESPECIALIDADES.nome_espec,
	POSSES.endereco_cons
FROM MEDICOS
JOIN USUARIOS ON (MEDICOS.email_med = USUARIOS.email)
JOIN ESPECIALIDADES ON (MEDICOS.id_espec_med = ESPECIALIDADES.id_especialidade)
RIGHT JOIN POSSES ON (POSSES.crm_med = MEDICOS.crm);

-- O que tem em InfoMedico?

SELECT * FROM InfoMedico;

-- a.1) Esta consulta projeta o nome dos convênios e a quantidade de médicos
-- associados a cada um deles:

SELECT CONVENIOS.nome_convenio, COUNT(DISTINCT MEDICOS.crm) AS quantidade_de_medicos_que_atendem
FROM CONVENIOS JOIN ATENDIMENTOS ON (CONVENIOS.id_convenio = ATENDIMENTOS.id_convenio)
JOIN MEDICOS ON (ATENDIMENTOS.crm_med = MEDICOS.crm)
GROUP BY (CONVENIOS.id_convenio)
ORDER BY quantidade_de_medicos_que_atendem DESC;

-- a.2) Esta consulta projeta o nome dos médicos cujo valor médio dos serviços prestados
-- (consultas, procedimentos, etc.) são maiores do que um valor arbitrário, que, neste
-- caso, é 350, bem como projeta, quando for o caso, o nome das doencas tratadas por cada um deles:

SELECT USUARIOS.nome, DOENCAS.nome_doenca
FROM SERVICOS
JOIN MEDICOS ON SERVICOS.crm_med = MEDICOS.crm
JOIN USUARIOS ON MEDICOS.email_med = USUARIOS.email
LEFT JOIN TRATAMENTOS ON (MEDICOS.crm = TRATAMENTOS.crm_med) 
LEFT JOIN DOENCAS ON (TRATAMENTOS.cid_doenca = DOENCAS.CID)
GROUP BY (USUARIOS.nome, DOENCAS.nome_doenca)
HAVING AVG(SERVICOS.preco_serv) > 350
ORDER BY USUARIOS.nome ASC, DOENCAS.nome_doenca ASC;

-- b.1) Esta consulta projeta o nome dos pacientes que NÃO se consultaram com um médico arbitrário,
-- cujo nome, neste caso, é Enrico Faria:

SELECT nome
FROM PACIENTES JOIN USUARIOS ON (PACIENTES.email_pac = USUARIOS.email)
WHERE PACIENTES.id_paciente NOT IN (SELECT paciente
						  			FROM AGENDAMENTOS JOIN MEDICOS ON (AGENDAMENTOS.medico = MEDICOS.crm)
						  			JOIN USUARIOS ON (USUARIOS.email = MEDICOS.email_med)
						  			WHERE USUARIOS.nome = 'Enrico Faria'
						 		);
								
-- b.2) Esta consulta projeta a pergunta feita a um médico que SÓ atende um convênio arbitrário
-- que, neste caso, é Golden Cross, bem como a resposta dada a essa pergunta:

SELECT DUVIDAS.texto_duvida pergunta, DUVIDAS.texto_resposta as resposta
FROM ATENDIMENTOS JOIN CONVENIOS ON (ATENDIMENTOS.id_convenio = CONVENIOS.id_convenio) 
JOIN DUVIDAS ON (ATENDIMENTOS.crm_med = DUVIDAS.crm_med)
WHERE nome_convenio = 'Golden Cross' 
			AND ATENDIMENTOS.crm_med NOT IN (SELECT crm_med
											FROM ATENDIMENTOS JOIN CONVENIOS ON (ATENDIMENTOS.id_convenio = CONVENIOS.id_convenio)
											WHERE CONVENIOS.nome_convenio <> 'Golden Cross');

-- c) Nomes das especialidades buscadas por pacientes que se consultaram com os MESMOS médicos 
-- de paciente com um nome arbitrário, que, neste caso, é Pedro Santos

SELECT nome_espec
FROM USUARIOS JOIN PACIENTES P1 ON (USUARIOS.email = P1.email_pac)
JOIN BUSCAS ON (BUSCAS.paciente = P1.id_paciente) 
JOIN ESPECIALIDADES ON (BUSCAS.id_especialidade = ESPECIALIDADES.id_especialidade)
WHERE nome <> 'Pedro Santos' AND NOT EXISTS (SELECT id_paciente
												FROM AGENDAMENTOS JOIN PACIENTES P2 ON (AGENDAMENTOS.paciente = P2.id_paciente)
											 	JOIN USUARIOS ON (P2.email_pac = USUARIOS.email)
											 	WHERE nome = 'Pedro Santos' 
											 AND NOT email_med IN (SELECT DISTINCT email_med
																		FROM AGENDAMENTOS
																		WHERE paciente = P1.id_paciente));
																		
-- d.1) Esta consulta projeta a data do agendamento que um paciente fez com um médico
-- de uma especialidade arbitrária, que, neste caso, é Ortopedista - Traumatologista:

-- Observação: ela utiliza a visão InfoMedico criada.

SELECT data_agenda, USUARIOS.nome AS nome_paciente, InfoMedico.nome AS nome_medico
FROM InfoMedico
JOIN AGENDAMENTOS ON (InfoMedico.crm = AGENDAMENTOS.medico)
JOIN PACIENTES ON (AGENDAMENTOS.paciente = PACIENTES.id_paciente)
JOIN USUARIOS ON (PACIENTES.email_pac = USUARIOS.email)
WHERE InfoMedico.nome_espec = 'Ortopedista - Traumatologista'
GROUP BY (AGENDAMENTOS.data_agenda, USUARIOS.nome, InfoMedico.nome);

-- d.2) Esta consulta projeta os nomes dos médicos, a especialidade e
-- o nome de uma doença arbitrária que tratam, que, neste caso, é
-- Bursite do ombro. 

-- Observação: ela utiliza a visão InfoMedico criada.

SELECT DISTINCT nome as nome_medico, nome_espec, nome_doenca
FROM InfoMedico
JOIN TRATAMENTOS ON InfoMedico.crm = TRATAMENTOS.crm_med
JOIN DOENCAS ON TRATAMENTOS.cid_doenca = DOENCAS.cid
WHERE nome_doenca = 'Bursite do ombro';


-- Consulta extra:

-- Esta consulta projeta os nomes dos médicos e o texto da descrição da(s) doença(s)
-- que começa(m) com uma string arbitrária, que, neste caso, é Alteração

SELECT USUARIOS.nome AS nome_medico, DOENCAS.descricao_doenca
FROM MEDICOS
JOIN USUARIOS ON (MEDICOS.email_med = USUARIOS.email)
JOIN TRATAMENTOS ON MEDICOS.crm = TRATAMENTOS.crm_med
JOIN DOENCAS ON TRATAMENTOS.cid_doenca = DOENCAS.cid
WHERE DOENCAS.descricao_doenca LIKE 'Alteração%';