-- Instanciação

INSERT INTO USUARIOS(email, CPF, RG, nome, senha) 
VALUES
-- Ortopedistas (em tabelas futuras....)
('drjoaosilva@gmail.com','123.456.789-09','12.345.678-9','João Silva','melhorortoped!'),
('drrafaelsantos@gmail.com','123.456.789-08','12.385.678-9','Rafael Santos','melhorortoped2!'),
('draanasouza@gmail.com','024.456.789-08','08.385.678-9','Ana Souza','melhorortoped3!'),
('dramarianaoliveira@gmail.com','120.456.789-08','12.385.678-4','Mariana Oliveira','melhorortoped4!'),
('drgabrielalmeida@gmail.com','125.456.789-09','12.345.878-9','Gabriel Almeida','melhorortoped5!'),
-- Dermatologistas (em tabelas futuras...)
('drandrelopes@gmail.com', '111.222.333-44', '11.222.333-4', 'André Lopes', 'melhordermat!'),
('drmarinarocha@gmail.com', '222.333.444-55', '22.333.444-5', 'Marina Rocha', 'melhordermat2!'),
('drafelipenunes@gmail.com', '333.444.555-66', '33.444.555-6', 'Felipe Nunes', 'melhordermat3!'),
('drluciamoreira@gmail.com', '444.555.666-77', '44.555.666-7', 'Lúcia Moreira', 'melhordermat4!'),
('drpedrosilveira@gmail.com', '555.666.777-88', '55.666.777-8', 'Pedro Silveira', 'melhordermat5!'),
-- Endocrinologistas (em tabelas futuras...)
('drenricofaria@gmail.com', '666.777.888-99', '66.777.888-9', 'Enrico Faria', 'melhorendocrino!'),
('drmarialima@gmail.com', '777.888.999-00', '77.888.999-0', 'Maria Lima', 'melhorendocrino2!'),
('drgustavosouza@gmail.com', '888.999.000-11', '88.999.000-1', 'Gustavo Souza', 'melhorendocrino3!'),
('drlaurasilva@gmail.com', '999.000.111-22', '99.000.111-2', 'Laura Silva', 'melhorendocrino4!'),
('drcarlosrodrigues@gmail.com', '000.111.222-33', '00.111.222-3', 'Carlos Rodrigues', 'melhorendocrino5!'),
-- Pediatras (em tabelas futuras...)
('drenzopeixoto@gmail.com', '111.222.333-45', '11.222.333-5', 'Enzo Peixoto', 'melhorpediatra!'),
('drlarissasilva@gmail.com', '222.333.444-56', '22.333.444-6', 'Larissa Silva', 'melhorpediatra2!'),
('drfelipesantos@gmail.com', '333.444.555-67', '33.444.555-7', 'Felipe Santos', 'melhorpediatra3!'),
('drisabelarocha@gmail.com', '444.555.666-78', '44.555.666-8', 'Isabela Rocha', 'melhorpediatra4!'),
('drgabrielfernandes@gmail.com', '555.666.777-89', '55.666.777-9', 'Gabriel Fernandes', 'melhorpediatra5!'),
-- Pacientes (em tabelas futuras...)
('lucas.machado@gmail.com', '901.234.567-99', '99.888.777-9', 'Lucas Machado', 'senhapaciente9!'),
('isabel.rocha@gmail.com', '012.345.678-00', '00.777.666-0', 'Isabel Rocha', 'senhapaciente10!'),
('joao.oliveira@gmail.com', '123.456.789-01', '01.666.555-1', 'João Oliveira', 'senhapaciente11!'),
('maria.silveira@gmail.com', '234.567.890-12', '12.555.444-2', 'Maria Silveira', 'senhapaciente12!'),
('pedro.santos@gmail.com', '345.678.901-23', '23.444.333-3', 'Pedro Santos', 'senhapaciente13!'),
('laura.almeida@gmail.com', '456.789.012-34', '34.333.222-4', 'Laura Almeida', 'senhapaciente14!'),
('ricardo.souza@gmail.com', '567.890.123-45', '45.222.111-5', 'Ricardo Souza', 'senhapaciente15!'),
('fernanda.rodrigues@gmail.com', '678.901.234-56', '56.111.000-6', 'Fernanda Rodrigues', 'senhapaciente16!'),
('carlinhos@gmail.com', '178.901.234-56', '26.111.000-6', 'Carlos Carleto', 'senhapaciente17!');


INSERT INTO ESPECIALIDADES(nome_espec, id_especialidade)
VALUES
('Ortopedista - Traumatologista', 0),
('Dermatologista', 1),
('Endocrinologista', 2),
('Pediatra', 3),
('Geriatra', 4);

INSERT INTO MEDICOS(crm, biografia, idiomas, email_med, id_espec_med)
VALUES
-- Ortopedistas:
('RS 12345','Ortopedista experiente em cirurgia de joelho, focado na reabilitação esportiva para melhor qualidade de vida.','Espanhol, Inglês','drjoaosilva@gmail.com',0),
('RS 23456','Cirurgião ortopédico, especializado em recuperação muscular e procedimentos avançados para restaurar a função.','Inglês','drrafaelsantos@gmail.com',0),
('RS 34567','Ortopedista comprometida com medicina preventiva e abordagem holística para melhor bem-estar físico e emocional.','Inglês, Francês','draanasouza@gmail.com',0),
('RS 45678','Ortopedista dedicada a restaurar a mobilidade e promover saúde reprodutiva, capacitando mulheres.','Alemão','dramarianaoliveira@gmail.com',0),
('RS 56789','Ortopedista experiente, destaque em cirurgias complexas, dedicado a cuidar de pacientes de todas as idades.','Inglês','drgabrielalmeida@gmail.com',0),
-- Dermatologistas:
('RS 12346', 'Especialista em dermatologia pediátrica.', 'Português, Inglês', 'drandrelopes@gmail.com', 1),
('RS 23457', 'Focada em tratamento de doenças de pele em crianças.', 'Português, Espanhol', 'drmarinarocha@gmail.com', 1),
('RS 34566', 'Amplamente experiente em dermatologia infantil.', 'Português', 'drafelipenunes@gmail.com', 1),
('RS 45676', 'Especialista em cuidados de pele para pacientes jovens.', 'Português, Francês', 'drluciamoreira@gmail.com', 1),
('RS 56786', 'Dedicado a trazer soluções para problemas dermatológicos em crianças.', 'Português, Inglês', 'drpedrosilveira@gmail.com', 1),
-- Endocrinologistas:
('RS 67890', 'Especialista em tratamento de doenças endócrinas.', 'Português, Inglês', 'drenricofaria@gmail.com', 2),
('RS 78901', 'Foco em endocrinologia pediátrica.', 'Português, Espanhol', 'drmarialima@gmail.com', 2),
('RS 89012', 'Ampla experiência em problemas hormonais.', 'Português', 'drgustavosouza@gmail.com', 2),
('RS 90123', 'Especialista em desordens metabólicas.', 'Português, Francês', 'drlaurasilva@gmail.com', 2),
('RS 01234', 'Dedicado a tratar distúrbios hormonais.', 'Português, Inglês', 'drcarlosrodrigues@gmail.com', 2),
-- Pediatras:
('RS 34067', 'Especialista em pediatria geral.', 'Português, Inglês', 'drenzopeixoto@gmail.com', 3),
('RS 45078', 'Dedicada a cuidar da saúde das crianças.', 'Português, Espanhol', 'drlarissasilva@gmail.com', 3),
('RS 56089', 'Foco em tratamento pediátrico abrangente.', 'Português', 'drfelipesantos@gmail.com', 3),
('RS 67090', 'Especialista em cuidados pediátricos avançados.', 'Português, Francês', 'drisabelarocha@gmail.com', 3),
('RS 78001', 'Dedicado a fornecer atendimento excepcional às crianças.', 'Português, Inglês', 'drgabrielfernandes@gmail.com', 3);

INSERT INTO CONSULTORIOS(endereco, telefone_cons, cidade, UF)
VALUES

('Rua Padre Chagas, 123 - Sala 201, Edifício Estrela','(51) 5555-1234','Porto Alegre','RS'),
('Avenida João Pessoa, 456 - Sala 405, Edifício Aurora','(51) 5555-5678','Porto Alegre','RS'),
('Rua da República, 789 - Sala 602, Edifício Sol Nascente',' (51) 5555-8901','Porto Alegre','RS'),
('Avenida Ipiranga, 234 - Sala 102, Edifício Prime','(51) 5555-2345','Porto Alegre','RS'),
('Rua Mostardeiro, 567 - Sala 801, Edifício Skyline','(51) 5555-6789','Porto Alegre','RS'),

('Rua Garibaldi, 987 - Sala 303, Edifício Garibaldi Center', '(51) 5555-4567','Porto Alegre','RS'),
('Avenida Farrapos, 5432 - Sala 706, Edifício Farrapos Tower', '(51) 5555-7890','Porto Alegre','RS'),
('Rua Gonçalo de Carvalho, 654 - Sala 405, Edifício Verdejante', '(51) 5555-0123','Porto Alegre','RS'),
('Avenida Icaraí, 7890 - Sala 202, Edifício Icaraí Plaza', '(51) 5555-2305','Porto Alegre','RS'),
('Rua Riachuelo, 1234 - Sala 506, Edifício Riachuelo Center', '(51) 5555-6709','Porto Alegre','RS'),

('Avenida Assis Brasil, 9876 - Sala 501, Edifício Assis Plaza', '(51) 1111-1111','Porto Alegre','RS'),
('Rua Lima e Silva, 543 - Sala 302, Edifício Lima Tower', '(51) 2222-2222','Porto Alegre','RS'),
('Avenida Cristóvão Colombo, 1234 - Sala 606, Edifício Cristóvão Center', '(51) 3333-3333','Porto Alegre','RS'),
('Rua Ramiro Barcelos, 678 - Sala 205, Edifício Ramiro Plaza', '(51) 4444-4444','Porto Alegre','RS'),
('Avenida Protásio Alves, 5678 - Sala 104, Edifício Protásio Tower', '(51) 5555-5555','Porto Alegre','RS'),

('Rua Sarmento Leite, 4321 - Sala 503, Edifício Sarmento Center', '(51) 6666-6666','Porto Alegre','RS'),
('Avenida Bento Gonçalves, 789 - Sala 304, Edifício Bento Plaza', '(51) 7777-7777','Porto Alegre','RS'),
('Rua Marechal Floriano, 456 - Sala 202, Edifício Marechal Tower', '(51) 8888-8888','Porto Alegre','RS'),
('Avenida Wenceslau Escobar, 567 - Sala 701, Edifício Escobar Plaza', '(51) 9999-9999','Porto Alegre','RS'),
('Rua José Bonifácio, 8765 - Sala 403, Edifício Bonifácio Tower', '(51) 1234-5678','Porto Alegre','RS'),

('Rua General Lima e Silva, 987 - Sala 701, Edifício General Plaza', '(51) 9876-5432','Porto Alegre','RS');


INSERT INTO POSSES(crm_med, email_med, endereco_cons, cidade, UF)
VALUES
-- Consultórios dos Ortopedistas:
('RS 12345','drjoaosilva@gmail.com','Rua Padre Chagas, 123 - Sala 201, Edifício Estrela','Porto Alegre','RS'),
('RS 23456','drrafaelsantos@gmail.com','Avenida João Pessoa, 456 - Sala 405, Edifício Aurora','Porto Alegre','RS'),
('RS 34567','draanasouza@gmail.com','Rua da República, 789 - Sala 602, Edifício Sol Nascente','Porto Alegre','RS'),
('RS 45678','dramarianaoliveira@gmail.com','Avenida Ipiranga, 234 - Sala 102, Edifício Prime','Porto Alegre','RS'),
('RS 56789','drgabrielalmeida@gmail.com','Rua Mostardeiro, 567 - Sala 801, Edifício Skyline','Porto Alegre','RS'),
-- Consultórios dos Dermatologistas:
('RS 12346','drandrelopes@gmail.com','Rua Garibaldi, 987 - Sala 303, Edifício Garibaldi Center','Porto Alegre','RS'),
('RS 23457','drmarinarocha@gmail.com','Avenida Farrapos, 5432 - Sala 706, Edifício Farrapos Tower','Porto Alegre','RS'),
('RS 34566','drafelipenunes@gmail.com','Rua Gonçalo de Carvalho, 654 - Sala 405, Edifício Verdejante','Porto Alegre','RS'),
('RS 45676','drluciamoreira@gmail.com','Avenida Icaraí, 7890 - Sala 202, Edifício Icaraí Plaza','Porto Alegre','RS'),
('RS 56786','drpedrosilveira@gmail.com','Rua Riachuelo, 1234 - Sala 506, Edifício Riachuelo Center','Porto Alegre','RS'),
-- Consultórios dos Endocrinologistas:
('RS 67890','drenricofaria@gmail.com','Avenida Assis Brasil, 9876 - Sala 501, Edifício Assis Plaza','Porto Alegre','RS'),
('RS 78901','drmarialima@gmail.com','Rua Lima e Silva, 543 - Sala 302, Edifício Lima Tower','Porto Alegre','RS'),
('RS 89012','drgustavosouza@gmail.com','Avenida Cristóvão Colombo, 1234 - Sala 606, Edifício Cristóvão Center','Porto Alegre','RS'),
('RS 90123','drlaurasilva@gmail.com','Rua Ramiro Barcelos, 678 - Sala 205, Edifício Ramiro Plaza','Porto Alegre','RS'),
('RS 01234','drcarlosrodrigues@gmail.com','Avenida Protásio Alves, 5678 - Sala 104, Edifício Protásio Tower','Porto Alegre','RS'),
-- Consulórios dos Pediatras:
('RS 34067','drenzopeixoto@gmail.com','Rua Sarmento Leite, 4321 - Sala 503, Edifício Sarmento Center','Porto Alegre','RS'),
('RS 45078','drlarissasilva@gmail.com','Avenida Bento Gonçalves, 789 - Sala 304, Edifício Bento Plaza','Porto Alegre','RS'),
('RS 56089','drfelipesantos@gmail.com','Rua Marechal Floriano, 456 - Sala 202, Edifício Marechal Tower','Porto Alegre','RS'),
('RS 67090','drisabelarocha@gmail.com','Avenida Wenceslau Escobar, 567 - Sala 701, Edifício Escobar Plaza','Porto Alegre','RS'),
('RS 78001','drgabrielfernandes@gmail.com','Rua José Bonifácio, 8765 - Sala 403, Edifício Bonifácio Tower','Porto Alegre','RS'),
('RS 78001','drgabrielfernandes@gmail.com','Rua General Lima e Silva, 987 - Sala 701, Edifício General Plaza','Porto Alegre','RS');


INSERT INTO PACIENTES(id_paciente, data_nasc, telefone_pac, genero, email_pac)
VALUES
(0, '1979-06-30', '(51) 9999-9999', 'Masculino', 'lucas.machado@gmail.com'),
(1, '1987-08-22', '(51) 0000-0000', 'Feminino', 'isabel.rocha@gmail.com'),
(2, '1991-02-03', '(51) 1234-5678', 'Masculino', 'joao.oliveira@gmail.com'),
(3, '1986-10-15', '(51) 2345-6789', 'Feminino', 'maria.silveira@gmail.com'),
(4, '1997-04-28', '(51) 3456-7890', 'Masculino', 'pedro.santos@gmail.com'),
(5, '1980-08-10', '(51) 4567-8901', 'Feminino', 'laura.almeida@gmail.com'),
(6, '1989-11-01', '(51) 5678-9012', 'Masculino', 'ricardo.souza@gmail.com'),
(7, '1994-01-14', '(51) 6789-0123', 'Feminino', 'fernanda.rodrigues@gmail.com'),
(8, '1949-07-20', '(51) 3345-6789', 'Masculino', 'carlinhos@gmail.com');


INSERT INTO CONVENIOS (id_convenio, nome_convenio)
VALUES
(0,'Unimed'),
(1,'Bradesco Saúde'),
(2,'SulAmérica'),
(3,'Amil'),
(4,'Golden Cross'),
(5,'IPE');

INSERT INTO ATENDIMENTOS(id_convenio, crm_med, email_med)
VALUES
(0,'RS 12345','drjoaosilva@gmail.com'),
(0,'RS 23456','drrafaelsantos@gmail.com'),
(0,'RS 34567','draanasouza@gmail.com'),
(0,'RS 45678','dramarianaoliveira@gmail.com'),
(0,'RS 56789','drgabrielalmeida@gmail.com'),
(0,'RS 12346','drandrelopes@gmail.com'),
(0,'RS 34566','drafelipenunes@gmail.com'),
(0,'RS 45676','drluciamoreira@gmail.com'),
(0,'RS 56786','drpedrosilveira@gmail.com'),
(0,'RS 67890','drenricofaria@gmail.com'),
(0,'RS 78901','drmarialima@gmail.com'),
(0,'RS 89012','drgustavosouza@gmail.com'),
(0,'RS 90123','drlaurasilva@gmail.com'),
(0,'RS 01234','drcarlosrodrigues@gmail.com'),
(0,'RS 34067','drenzopeixoto@gmail.com'),
(0,'RS 45078','drlarissasilva@gmail.com'),
(0,'RS 56089','drfelipesantos@gmail.com'),
(0,'RS 67090','drisabelarocha@gmail.com'),
(0,'RS 78001','drgabrielfernandes@gmail.com'),

(1,'RS 12345','drjoaosilva@gmail.com'),
(1,'RS 23456','drrafaelsantos@gmail.com'),
(1,'RS 34567','draanasouza@gmail.com'),
(1,'RS 45678','dramarianaoliveira@gmail.com'),
(1,'RS 56789','drgabrielalmeida@gmail.com'),
(1,'RS 12346','drandrelopes@gmail.com'),
(1,'RS 34566','drafelipenunes@gmail.com'),
(1,'RS 45676','drluciamoreira@gmail.com'),
(1,'RS 56786','drpedrosilveira@gmail.com'),
(1,'RS 67890','drenricofaria@gmail.com'),
(1,'RS 78901','drmarialima@gmail.com'),
(1,'RS 89012','drgustavosouza@gmail.com'),
(1,'RS 90123','drlaurasilva@gmail.com'),
(1,'RS 01234','drcarlosrodrigues@gmail.com'),
(1,'RS 34067','drenzopeixoto@gmail.com'),
(1,'RS 45078','drlarissasilva@gmail.com'),
(1,'RS 56089','drfelipesantos@gmail.com'),
(1,'RS 67090','drisabelarocha@gmail.com'),
(1,'RS 78001','drgabrielfernandes@gmail.com'),

(2,'RS 12346','drandrelopes@gmail.com'),
(2,'RS 78901','drmarialima@gmail.com'),
(2,'RS 45078','drlarissasilva@gmail.com'),
(2,'RS 56089','drfelipesantos@gmail.com'),

(3,'RS 12345','drjoaosilva@gmail.com'),
(3,'RS 89012','drgustavosouza@gmail.com'),
(3,'RS 67090','drisabelarocha@gmail.com'),

(4,'RS 23457','drmarinarocha@gmail.com'),
(4,'RS 78001','drgabrielfernandes@gmail.com'),

(5,'RS 45676','drluciamoreira@gmail.com'),
(5,'RS 56786','drpedrosilveira@gmail.com');



INSERT INTO BUSCAS(id_especialidade, paciente, email_pac)
VALUES
(0, 0, 'lucas.machado@gmail.com'),
(0,1, 'isabel.rocha@gmail.com'),
(0,4, 'pedro.santos@gmail.com'),
(0,6, 'ricardo.souza@gmail.com'),
(0,7, 'fernanda.rodrigues@gmail.com'),
(0,7, 'fernanda.rodrigues@gmail.com'),

(1,6, 'ricardo.souza@gmail.com'),
(1,3, 'maria.silveira@gmail.com'),
(1,3, 'maria.silveira@gmail.com'),
(1,4, 'pedro.santos@gmail.com'),
(1,5, 'laura.almeida@gmail.com'),

(2,0, 'lucas.machado@gmail.com'),
(2,1, 'isabel.rocha@gmail.com'),
(2,2, 'joao.oliveira@gmail.com'),
(2,3, 'maria.silveira@gmail.com'),
(2,4, 'pedro.santos@gmail.com'),
(2,5, 'laura.almeida@gmail.com'),
(2,6, 'ricardo.souza@gmail.com'),
(2,7, 'fernanda.rodrigues@gmail.com'),

(3,2, 'joao.oliveira@gmail.com'),
(3,4, 'pedro.santos@gmail.com'),
(3,7, 'fernanda.rodrigues@gmail.com'),
(4,7, 'fernanda.rodrigues@gmail.com'),

(0,8,'carlinhos@gmail.com'),
(1,8,'carlinhos@gmail.com'),
(3,8,'carlinhos@gmail.com');

INSERT INTO DOENCAS(CID, nome_doenca, descricao_doenca)
VALUES
('M75.5', 'Bursite do ombro', 'Inflamação das bursas no ombro, causando dor e desconforto.'),
('M75.2', 'Tendinite bicipital', 'Inflamação do tendão bicipital, resultando em dor e limitação de movimento.'),
('S52', 'Fratura de cotovelo', 'Quebra do osso do cotovelo, requerendo tratamento e imobilização.'),
('M235', 'Instabilidade crônica do joelho', 'Fraqueza dos ligamentos do joelho, levando a instabilidade e risco de lesões.'),
('M403', 'Síndrome da retificação da coluna vertebral', 'Alteração na curvatura normal da coluna, causando dor e desconforto.'),

('Q829', 'Malformação congênita não especificada da pele', 'Anomalia na formação da pele ao nascimento, variando em gravidade.'),
('R234', 'Alterações na textura da pele', 'Mudanças na textura da pele, podendo incluir rugosidades, aspereza ou ressecamento.'),
('Z945', 'Pele transplantada', 'Área de pele que foi transplantada de outra parte do corpo ou doada por outra pessoa.'),

('E724', 'Distúrbios do metabolismo da ornitina', 'Problemas no processamento do aminoácido ornitina, afetando o metabolismo.'),
('D553', 'Anemia devida a transtornos do metabolismo de nucleotídios', 'Anemia causada por alterações nos processos de metabolismo de nucleotídios.'),
('E702', 'Distúrbios do metabolismo da tirosina', 'Problemas no metabolismo do aminoácido tirosina, podendo causar diversos sintomas.'),

('G120', 'Atrofia muscular espinal infantil tipo I [Werdnig-Hoffman]', 'Doença genética que afeta os neurônios motores, levando a fraqueza muscular.'),
('H260', 'Catarata infantil, juvenil e pré-senil', 'Opacidade do cristalino nos olhos em idades mais jovens, podendo causar perda de visão.');

INSERT INTO TRATAMENTOS(cid_doenca, crm_med, email_med)
VALUES
('M75.5','RS 12345','drjoaosilva@gmail.com'),
('M235','RS 23456','drrafaelsantos@gmail.com'),
('M403','RS 34567','draanasouza@gmail.com'),
('S52','RS 45678','dramarianaoliveira@gmail.com'),
('M403','RS 45678','dramarianaoliveira@gmail.com'),
('M403','RS 23456','drrafaelsantos@gmail.com'),
('M75.2','RS 12345','drjoaosilva@gmail.com'),

('Q829','RS 12346','drandrelopes@gmail.com'),
('Q829','RS 23457','drmarinarocha@gmail.com'),
('Q829','RS 34566','drafelipenunes@gmail.com'),
('R234','RS 45676','drluciamoreira@gmail.com'),
('Z945','RS 56786','drpedrosilveira@gmail.com'),
('R234','RS 23457','drmarinarocha@gmail.com'),

('E724','RS 67890','drenricofaria@gmail.com'),
('D553','RS 78901','drmarialima@gmail.com'),
('E702','RS 89012','drgustavosouza@gmail.com'),
('E702','RS 90123','drlaurasilva@gmail.com'),
('E724','RS 01234','drcarlosrodrigues@gmail.com'),

('G120','RS 34067','drenzopeixoto@gmail.com'),
('H260','RS 45078','drlarissasilva@gmail.com');

INSERT INTO SERVICOS(nome_serv, preco_serv, crm_med, email_med)
VALUES
('Consulta ortopedia e traumatologia',250,'RS 12345','drjoaosilva@gmail.com'),
('Consulta ortopedia e traumatologia',300,'RS 23456','drrafaelsantos@gmail.com'),
('Consulta ortopedia e traumatologia',175,'RS 34567','draanasouza@gmail.com'),
('Consulta ortopedia e traumatologia',900,'RS 45678','dramarianaoliveira@gmail.com'),
('Consulta ortopedia e traumatologia',230,'RS 56789','drgabrielalmeida@gmail.com'),
('Artrodese da coluna lombar por via anterior',1000,'RS 12345','drjoaosilva@gmail.com'),

('Consulta dermatologia',275,'RS 12346','drandrelopes@gmail.com'),
('Consulta dermatologia',300,'RS 23457','drmarinarocha@gmail.com'),
('Consulta dermatologia',100,'RS 34566','drafelipenunes@gmail.com'),
('Consulta dermatologia',1200,'RS 45676','drluciamoreira@gmail.com'),
('Consulta dermatologia',390,'RS 56786','drpedrosilveira@gmail.com'),
('Laser Fracionado',800,'RS 23457','drmarinarocha@gmail.com'),

('Consulta endocrinologia',600,'RS 67890','drenricofaria@gmail.com'),
('Consulta endocrinologia',150,'RS 78901','drmarialima@gmail.com'),
('Consulta endocrinologia',360,'RS 89012','drgustavosouza@gmail.com'),
('Consulta endocrinologia',70,'RS 90123','drlaurasilva@gmail.com'),
('Consulta endocrinologia',350,'RS 01234','drcarlosrodrigues@gmail.com'),
('Controle de Glicemia',750,'RS 90123','drlaurasilva@gmail.com'),

('Consulta pediatria',140,'RS 34067','drenzopeixoto@gmail.com'),
('Consulta pediatria',700,'RS 45078','drlarissasilva@gmail.com'),
('Consulta pediatria',625,'RS 56089','drfelipesantos@gmail.com'),
('Consulta pediatria',300,'RS 67090','drisabelarocha@gmail.com'),
('Consulta pediatria',170,'RS 78001','drgabrielfernandes@gmail.com'),
('Acompanhamento de rotina (Puericultura)',80,'RS 78001','drgabrielfernandes@gmail.com');


INSERT INTO DUVIDAS(texto_duvida, texto_resposta, crm_med, email_med)
VALUES
('O que significa: ausencia de liquido na bolsa subdeltoidea-subacrominal?','Significa que você não tem um processo inflamatório, ou, se tem ele é não é muito significativo. Isso não quer dizer que não possa existir outra patologia que esteja te causando dor.','RS 12345','drjoaosilva@gmail.com'),
('Como é feita a cirurgia,Acromioplastia,e quanto tempo leva a recuperação?','Acromioplastia é un procedimento realizado por videoartroscopia, geralmente para tratar sindrome do impacto, podendo tambem estar relacionado a rupturas do manguito rotador.
O procedimento tambem pode ser feito por cirurgia aberta, dependendo do caso.','RS 23456','drrafaelsantos@gmail.com'),
('Depois de quanto tempo, de ingerir o condroflex em sachê, se pode esporadicamente ingerir bebida alcoólica?','Se for socialmente sem exagero após 3 horas','RS 56789','drgabrielalmeida@gmail.com'),

('o que é melasma?','O melasma, muitas vezes confundido com uma simples manchinha, é a presença de manchas marrons ou marrom-acinzentadas, habitualmente nos dois lados da face, especialmente nas bochechas, lábio superior, nariz fronte ou queixo. Ele é causado pela produção excessiva de melanina, o pigmento que dá cor à pele. Esta doença de pele, considerada comum, principalmente em mulheres, visto que os homens raramente desenvolvem melasmas. Estima-se que até 75% das gestantes e até 35% das mulheres em tratamento com contraceptivos orais são afetadas pela doença. Embora qualquer pessoa possa ter melasma, ela é comum em indivíduos com pele morena. Além disso, ele pode ser leve, moderado ou grave, dependendo de quanto sua face é afetada e quão intensa é a pigmentação. Para o tratamento desta doença é fundamental a consulta a um médico dermatologista. Cuide sempre da saúde de sua pele.','RS 12346','drandrelopes@gmail.com'),
('Doutor, o farmaceutico me falou que não devo tomar Roacutan (isotretinoina) no verão pois pode provocar manchas permanentes. Isso é verdade?','Durante o tratamento com esse medicamento a pele do corpo fica seca e mais fina. Isso faz com que ela fique mais sensível ao sol, aumentando o risco de queimaduras. No verão acaba potencializando o risco pela excessiva exposição do corpo ao sol. Por isso, o uso do filtro solar com alto fator de proteção (FPS) é obrigatório, assim como sua reaplicação a cada 2 horas de exposição solar. Importante: Sempre procure um médico dermatologista para maiores esclarecimentos sobre o tratamento receitado.','RS 12346','drandrelopes@gmail.com'),
('Estou com um ferimento no lábio inferior, posso fazer uso do creme e tomar os comprimidos antivirax?','Prezado(a), Em se tratando um quadro viral do tipo herpes labial, sim, podes usar tratamento via oral e local na dosagem e maneira correta. Att., Dra. Marina Rocha.','RS 23457','drmarinarocha@gmail.com'),

('O tratamento medicamentoso da tireodite de hashimoto consiste apenas na ingestão do t4 sintético ou pode haver a necessidade de se repor algum outro hormônio ou substância?','Quando a patologia é unicamente Tireoidite de Hashimoto, cursando com hipotireoidismo, deve ser tratada com levotiroxina apenas (hormônio sintético).
Contudo, existem condições clínicas mais raras que cursam com acometimento auto-imune da tireóide (Hashimoto) e também de outras glândulas (são as Síndromes Poliglandulares).
Procure um endocrinologista e tire todas as suas dúvidas a respeito de seu diagnóstico e tratamento. Espero ter ajudado.','RS 67890','drenricofaria@gmail.com'),
('Sou diabético tipo 02, qual o nível da glicose normal após refeição?','O valor ideal de glicemia capilar após 2h das refeições é abaixo de 140mg/dl. Algumas associações como a Associação Americana de Diabetes tolera valores até 180mg/dl. Contudo, niveis de glicemia acima de 140mg/dl 2h após as refeições estão associados a um maior risco cardiovascular.','RS 67890','drenricofaria@gmail.com'),


('Twnho um bb de 1 ano e 5 meses posso fazer progresiva com formol?','As escovas progressivas com formol não são indicadas para mães que estão amamentando.','RS 56089','drfelipesantos@gmail.com');


INSERT INTO AGENDAMENTOS(data_agenda, paciente, medico, email_pac, email_med)
VALUES

('2023-08-15 10:00', 0, 'RS 12345', 'lucas.machado@gmail.com', 'drjoaosilva@gmail.com'),
('2023-08-16 14:30', 1, 'RS 23457', 'isabel.rocha@gmail.com', 'drmarinarocha@gmail.com'),
('2023-08-17 09:15', 2, 'RS 78901', 'joao.oliveira@gmail.com', 'drenricofaria@gmail.com'),
('2023-08-18 11:45', 3, 'RS 89012', 'maria.silveira@gmail.com', 'drgustavosouza@gmail.com'),
('2023-08-19 16:00', 4, 'RS 56089', 'pedro.santos@gmail.com', 'drfelipesantos@gmail.com'),
('2023-08-20 13:30', 5, 'RS 67890', 'laura.almeida@gmail.com', 'drenricofaria@gmail.com'),
('2023-08-21 15:15', 6, 'RS 45676', 'ricardo.souza@gmail.com', 'drluciamoreira@gmail.com'),
('2023-08-22 08:45', 7, 'RS 34067', 'fernanda.rodrigues@gmail.com', 'drenzopeixoto@gmail.com'),
('2023-08-23 12:30', 0, 'RS 34567', 'lucas.machado@gmail.com', 'draanasouza@gmail.com'),
('2023-08-24 11:00', 1, 'RS 45678', 'isabel.rocha@gmail.com', 'dramarianaoliveira@gmail.com'),
('2023-08-25 09:45', 2, 'RS 90123', 'joao.oliveira@gmail.com', 'drlaurasilva@gmail.com'),
('2023-08-26 14:20', 3, 'RS 01234', 'maria.silveira@gmail.com', 'drcarlosrodrigues@gmail.com'),
('2023-08-27 16:45', 4, 'RS 12346', 'pedro.santos@gmail.com', 'drandrelopes@gmail.com'),
('2023-08-28 08:15', 5, 'RS 23456', 'laura.almeida@gmail.com', 'drrafaelsantos@gmail.com'),
('2023-08-29 10:30', 6, 'RS 56789', 'ricardo.souza@gmail.com', 'drgabrielalmeida@gmail.com'),
('2023-08-30 15:50', 7, 'RS 78001', 'fernanda.rodrigues@gmail.com', 'drgabrielfernandes@gmail.com'),
('2023-09-01 11:40', 1, 'RS 56786', 'isabel.rocha@gmail.com', 'drpedrosilveira@gmail.com'),
('2023-09-02 09:20', 2, 'RS 67890', 'joao.oliveira@gmail.com', 'drenricofaria@gmail.com'),
('2023-09-03 14:05', 3, 'RS 78901', 'maria.silveira@gmail.com', 'drmarialima@gmail.com'),
('2023-08-19 18:00', 8, 'RS 56089', 'pedro.santos@gmail.com', 'drfelipesantos@gmail.com'),
('2023-08-27 18:45', 8, 'RS 12346', 'pedro.santos@gmail.com', 'drandrelopes@gmail.com');