-- Gatilho projetado para o PostgreS

-- Apaga o gatilho:
DROP TRIGGER IF EXISTS agendar_apos_pesquisa ON AGENDAMENTOS;
-- Apaga o procedimento armazenado:
DROP FUNCTION IF EXISTS verificar_medico_pesquisado();

-- O seguinte procedimento armazenado, que será utilizado em um gatilho,
-- tem o objetivo de impedir que um agendamento entre paciente e médico
-- seja feito se o o paciente não fez uma busca pela especialidade 
-- associada a esse médico:

CREATE OR REPLACE FUNCTION verificar_medico_pesquisado()
RETURNS TRIGGER AS $$
BEGIN
	IF (SELECT COUNT(*)
		FROM BUSCAS
		WHERE paciente = NEW.paciente
		AND id_especialidade = (SELECT id_espec_med FROM MEDICOS WHERE crm = NEW.medico)) = 0 THEN
		RAISE EXCEPTION 'O médico não foi pesquisado pelo paciente.';
	END IF;
    
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Criação do gatilho
CREATE TRIGGER agendar_apos_pesquisa
BEFORE INSERT ON AGENDAMENTOS
FOR EACH ROW
EXECUTE FUNCTION verificar_medico_pesquisado();