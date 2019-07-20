-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.1.34-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win32
-- HeidiSQL Versão:              9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Copiando estrutura do banco de dados para sistemacasulo
CREATE DATABASE IF NOT EXISTS `sistemacasulo` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `sistemacasulo`;

-- Copiando estrutura para tabela sistemacasulo.circ_do_acolhimen
CREATE TABLE IF NOT EXISTS `circ_do_acolhimen` (
  `ID_Crianca_Adoles` int(100) DEFAULT NULL COMMENT 'ID da Criança/Adolescente',
  `Nome_Respon` varchar(50) DEFAULT NULL COMMENT 'Nome do responsável pelo acolhimento:',
  `Funcao_Respon` varchar(50) DEFAULT NULL COMMENT 'Função do responsável pelo acolhimento:',
  `Contato` varchar(50) DEFAULT NULL COMMENT 'Telefone (Celular,Residencial ou comercial)',
  `Entrega_volun` tinyint(4) DEFAULT NULL COMMENT 'Entrega Voluntaria',
  `Violencia_Fisica` tinyint(4) DEFAULT NULL COMMENT 'Violência física',
  `Explo_Rua_Mendi` tinyint(4) DEFAULT NULL COMMENT 'Exploração sexual / rua / mendicâcia',
  `Ameaca_doenca` tinyint(4) DEFAULT NULL COMMENT 'Ameaça de morte dos pais / por doença',
  `Pais_Respo` tinyint(4) DEFAULT NULL COMMENT 'Pais / responsáveis alcoólatras',
  `Negligencia` tinyint(4) DEFAULT NULL COMMENT 'Negligencia',
  `Pais_Respon_Sofri` tinyint(4) DEFAULT NULL COMMENT 'Pais / Responsáveis com transtorno mental / sofrimento psíquico',
  `Ausencia_Respon` tinyint(4) DEFAULT NULL COMMENT 'Ausência dos pais / responsáveis por prisão ou internação',
  `Orfandade` tinyint(4) DEFAULT NULL COMMENT 'Orfandade',
  `Violencia_Psi` tinyint(4) DEFAULT NULL COMMENT 'Violência psicologica',
  `Trabalho_Infantil` tinyint(4) DEFAULT NULL COMMENT 'Tabalho Infantil',
  `Respon_Usuario` tinyint(4) DEFAULT NULL COMMENT 'Pais / responsavéis usuários abusivos de drogas',
  `Abandono` tinyint(4) DEFAULT NULL COMMENT 'Abandono',
  `Abuso_sexual` tinyint(4) DEFAULT NULL COMMENT 'Abuso sexual',
  `Ausencia_dos_Pais` tinyint(4) DEFAULT NULL COMMENT 'Ausência dos pais / responsáveis',
  `Pais_Respo_Defi` tinyint(4) DEFAULT NULL COMMENT 'Pais / Responsáveis com algum tipo de deficiência',
  `Conflito_Familiar` tinyint(4) DEFAULT NULL COMMENT 'Conflito familiar',
  `Outro_Qual` varchar(100) DEFAULT NULL COMMENT 'Outro/Qual',
  `Mae` tinyint(4) DEFAULT NULL COMMENT 'Mãe',
  `Pai` tinyint(4) DEFAULT NULL COMMENT 'Pai',
  `Madrasta` tinyint(4) DEFAULT NULL COMMENT 'Madrasta',
  `Padrasto` tinyint(4) DEFAULT NULL COMMENT 'Padrasto',
  `Irmao_a` tinyint(4) DEFAULT NULL COMMENT 'Irmão(a)',
  `Tio_a` tinyint(4) DEFAULT NULL COMMENT 'Tio(a)',
  `Primo_a` tinyint(4) DEFAULT NULL COMMENT 'Primo(a)',
  `Avo_o` tinyint(4) DEFAULT NULL COMMENT 'Avó(ô)',
  `Nao_se_Aplica` tinyint(4) DEFAULT NULL COMMENT 'Não se Aplica',
  `Especifique` varchar(100) DEFAULT NULL COMMENT 'Especifique',
  `Observacao` varchar(100) DEFAULT NULL COMMENT 'Observação',
  KEY `FK_circ_do_acolhimen_info_crianca_adolescente` (`ID_Crianca_Adoles`),
  CONSTRAINT `FK_circ_do_acolhimen_info_crianca_adolescente` FOREIGN KEY (`ID_Crianca_Adoles`) REFERENCES `info_crianca_adolescente` (`ID_Crianca_Adoles`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela sistemacasulo.circ_do_acolhimen: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `circ_do_acolhimen` DISABLE KEYS */;
INSERT INTO `circ_do_acolhimen` (`ID_Crianca_Adoles`, `Nome_Respon`, `Funcao_Respon`, `Contato`, `Entrega_volun`, `Violencia_Fisica`, `Explo_Rua_Mendi`, `Ameaca_doenca`, `Pais_Respo`, `Negligencia`, `Pais_Respon_Sofri`, `Ausencia_Respon`, `Orfandade`, `Violencia_Psi`, `Trabalho_Infantil`, `Respon_Usuario`, `Abandono`, `Abuso_sexual`, `Ausencia_dos_Pais`, `Pais_Respo_Defi`, `Conflito_Familiar`, `Outro_Qual`, `Mae`, `Pai`, `Madrasta`, `Padrasto`, `Irmao_a`, `Tio_a`, `Primo_a`, `Avo_o`, `Nao_se_Aplica`, `Especifique`, `Observacao`) VALUES
	(NULL, ' Joojao', ' Gerente', ' (19) 3468-1137', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ' joojinho', 0, 1, 0, 0, 0, 0, 0, 0, 0, 'jooj', 'nelson');
/*!40000 ALTER TABLE `circ_do_acolhimen` ENABLE KEYS */;

-- Copiando estrutura para tabela sistemacasulo.composicao_familiar
CREATE TABLE IF NOT EXISTS `composicao_familiar` (
  `ID_Crianca_Adoles` int(100) DEFAULT NULL COMMENT 'ID da Criança/Adolescente',
  `Em_est_e_acomp_da_sit_fami` tinyint(4) DEFAULT NULL COMMENT 'Em estudo e acompanhamento da situação familiar',
  `Prep_p_reint_fam_nat` tinyint(4) DEFAULT NULL COMMENT 'Preparação para reintregração familiar(família natural)',
  `Pod_fam_dest` tinyint(4) DEFAULT NULL COMMENT 'Poder familiar destituído',
  `S_inf_d_fam` tinyint(4) DEFAULT NULL COMMENT 'Sem informação da família',
  `Cri_Adol_orf` tinyint(4) DEFAULT NULL COMMENT 'Criança/Adolescente Órfão',
  `Prep_p_reint_fam_ext` tinyint(4) DEFAULT NULL COMMENT 'Preparação para reintegração familiar(familia extensa)',
  `Em_proc_d_gua_tut_ad` tinyint(4) DEFAULT NULL COMMENT 'Em processo de guarda/tutela/adoção',
  `Nome_Completo` varchar(100) DEFAULT NULL COMMENT 'Nome Completo sem abreviação',
  `Idade` varchar(50) DEFAULT NULL COMMENT 'Idade',
  `Escolaridade` varchar(50) DEFAULT NULL COMMENT 'Escolaridade',
  `Parentesco` varchar(50) DEFAULT NULL COMMENT 'Parentesco',
  `Ocupacao` varchar(50) DEFAULT NULL COMMENT 'Ocupação',
  `Sexo` varchar(50) DEFAULT NULL COMMENT 'Sexo',
  `Renda` varchar(50) DEFAULT NULL COMMENT 'Renda',
  `Endereco` varchar(50) DEFAULT NULL COMMENT 'Endereço',
  `Telefone` varchar(10) DEFAULT NULL COMMENT 'Telefone',
  KEY `FK_composicao_familiar_info_crianca_adolescente` (`ID_Crianca_Adoles`),
  CONSTRAINT `FK_composicao_familiar_info_crianca_adolescente` FOREIGN KEY (`ID_Crianca_Adoles`) REFERENCES `info_crianca_adolescente` (`ID_Crianca_Adoles`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela sistemacasulo.composicao_familiar: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `composicao_familiar` DISABLE KEYS */;
INSERT INTO `composicao_familiar` (`ID_Crianca_Adoles`, `Em_est_e_acomp_da_sit_fami`, `Prep_p_reint_fam_nat`, `Pod_fam_dest`, `S_inf_d_fam`, `Cri_Adol_orf`, `Prep_p_reint_fam_ext`, `Em_proc_d_gua_tut_ad`, `Nome_Completo`, `Idade`, `Escolaridade`, `Parentesco`, `Ocupacao`, `Sexo`, `Renda`, `Endereco`, `Telefone`) VALUES
	(NULL, 1, 1, 1, 1, 0, 0, 0, 'asdasdasdasd', '', '3.Ensino Fundamental', '3.Pai  ', '3.Temporário em área rural', 'M - Masculino', '65.456.456,00', 'asdasdasdasd', '6456456456');
/*!40000 ALTER TABLE `composicao_familiar` ENABLE KEYS */;

-- Copiando estrutura para tabela sistemacasulo.info_crianca_adolescente
CREATE TABLE IF NOT EXISTS `info_crianca_adolescente` (
  `ID_Crianca_Adoles` int(100) NOT NULL AUTO_INCREMENT COMMENT 'Número de identificação',
  `Sem_Registro` tinyint(1) NOT NULL COMMENT 'Sem registro em cartório',
  `Nome_Comp` varchar(50) NOT NULL COMMENT 'Nome completo da criança ou adolescente',
  `Como_chamar` varchar(50) NOT NULL COMMENT 'Como chamar a criança ou adolescente',
  `Sexo` varchar(50) NOT NULL COMMENT 'Sexo da criança ou adolescente',
  `Cor_raca` varchar(50) NOT NULL COMMENT 'Cor/Raça da criança ou adolescente',
  `Nacionalidade` varchar(50) NOT NULL COMMENT 'Nacionalidade da criança ou adolescente (Brasileira)',
  `Naturalidade` varchar(50) NOT NULL COMMENT 'Naturalidade da criança ou adolescente',
  `Data_nasc` varchar(50) NOT NULL COMMENT 'Data de nascimento da criança ou adolescente',
  `Idade` int(2) NOT NULL COMMENT 'Idade da criança ou adolescente',
  `Idade_presu` tinyint(1) NOT NULL COMMENT 'Idade presumida da criança ou adolescente',
  `End_ultima_resi` varchar(30) NOT NULL COMMENT 'Endereço da última residência',
  `Bairro_ultima_resi` varchar(30) NOT NULL COMMENT 'Bairro da última residência',
  `Muni_ultima_resi` varchar(30) NOT NULL COMMENT 'Município da última residência',
  `Cep_ultima_resi` varchar(15) NOT NULL COMMENT 'CEP da última residência',
  `Estado_ultima_resi` varchar(30) NOT NULL COMMENT 'Estado da última residência',
  `Enc_vinda_muni_est` tinyint(1) NOT NULL COMMENT 'Encaminhada(o)/ Vinda(o) de outro Município ou Estado',
  `Uso_alcool_drogas` tinyint(1) NOT NULL COMMENT 'Uso de álcool/drogas',
  `Defi_problema_grave` tinyint(1) NOT NULL COMMENT 'Deficiência ou problema de saúde grave',
  `Acolhida_ant` tinyint(1) NOT NULL COMMENT 'Acolhida(o) anteriormente',
  `Transferido_serv` varchar(100) NOT NULL COMMENT 'Transferida(o) de outro serviço de acolhimento',
  `situacao` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_Crianca_Adoles`),
  KEY `ID_Crianca_Adoles` (`ID_Crianca_Adoles`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela sistemacasulo.info_crianca_adolescente: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `info_crianca_adolescente` DISABLE KEYS */;
INSERT INTO `info_crianca_adolescente` (`ID_Crianca_Adoles`, `Sem_Registro`, `Nome_Comp`, `Como_chamar`, `Sexo`, `Cor_raca`, `Nacionalidade`, `Naturalidade`, `Data_nasc`, `Idade`, `Idade_presu`, `End_ultima_resi`, `Bairro_ultima_resi`, `Muni_ultima_resi`, `Cep_ultima_resi`, `Estado_ultima_resi`, `Enc_vinda_muni_est`, `Uso_alcool_drogas`, `Defi_problema_grave`, `Acolhida_ant`, `Transferido_serv`, `situacao`) VALUES
	(1, 0, 'Renato Pedro Henrique Márcio da Cunha', 'Renatinho', 'Masculino', 'Branca', 'Canadense', 'Italiano', '25/11/1997', 21, 0, 'Av.Paschoal Arditto', 'São manoel', 'Americana', '13468-380', 'São Paulo', 0, 1, 0, 0, '', 'adotado');
/*!40000 ALTER TABLE `info_crianca_adolescente` ENABLE KEYS */;

-- Copiando estrutura para tabela sistemacasulo.inf_ad_crian_adole
CREATE TABLE IF NOT EXISTS `inf_ad_crian_adole` (
  `ID_Crianca_Adoles` int(100) DEFAULT NULL COMMENT 'ID da Criança/Adolescente',
  `Crian_adoles_sem_fam_ou_ident_con` tinyint(4) DEFAULT NULL COMMENT 'Criança/adolescente sem família ou identidade conhecidas?',
  `Inc_n_cad_nac_d_crian_ou_adole_desap` tinyint(4) DEFAULT NULL COMMENT 'Incluido no Cadastro Nacional da Criança ou Adolescente Desaparecido(CNCAD)?',
  `A_crian_adole_est_incl_no_cad_nac_d_ado` tinyint(4) DEFAULT NULL COMMENT 'A criança/adolescente está incluído no Cadastro Nacional de Adoção(CNA)?',
  `Aguardando_Pretendente` tinyint(4) DEFAULT NULL COMMENT 'Se ela/ele está incluída(o) no CNA, qual o estágio para adoção:',
  `Em_Estagio_de_convivencia` tinyint(4) DEFAULT NULL COMMENT 'Em Estágio de Convivência',
  `Aguard_Sent_Jud_p_Adoc` tinyint(4) DEFAULT NULL COMMENT 'Aguardando Sentença Judicial para Adoção',
  `Adole_cum_med_socioed` tinyint(4) DEFAULT NULL COMMENT 'Adolescente cumprindo média socioeducativo?',
  `Qual` varchar(100) DEFAULT NULL COMMENT 'Qual',
  `crian_adole_com_hist_d_sit_d_r` tinyint(4) DEFAULT NULL COMMENT 'Criança/adolescente com histórico de situação de rua?',
  `A_crian_adole_f_acol_ant` tinyint(4) DEFAULT NULL COMMENT 'A criança/adolescente foi acolhida anteriormente?',
  `Sem_Informacao` tinyint(4) DEFAULT NULL COMMENT 'Sem Informação',
  `Nome_Completo` varchar(50) DEFAULT NULL COMMENT 'Nome completo sem abreviação',
  `Endereco` varchar(50) DEFAULT NULL COMMENT 'Endereço',
  `Dat_d_Ent` varchar(10) DEFAULT NULL COMMENT 'Data de Entrada',
  `Dat_d_Sai` varchar(10) DEFAULT NULL COMMENT 'Data de Saída',
  `Mot_d_Acolhi` varchar(200) DEFAULT NULL COMMENT 'Motivo do Acolhimento',
  `Mot_d_Desl` varchar(200) DEFAULT NULL COMMENT 'Motivo da Saída',
  `Nome_e_Parentesco` varchar(100) DEFAULT NULL COMMENT 'Nome e parentesco da pessoa que assumiu os cuidados/guarda após o desligamento',
  `Parentesco` varchar(100) DEFAULT NULL COMMENT 'Parentesco',
  KEY `FK_inf_ad_crian_adole_info_crianca_adolescente` (`ID_Crianca_Adoles`),
  CONSTRAINT `FK_inf_ad_crian_adole_info_crianca_adolescente` FOREIGN KEY (`ID_Crianca_Adoles`) REFERENCES `info_crianca_adolescente` (`ID_Crianca_Adoles`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela sistemacasulo.inf_ad_crian_adole: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `inf_ad_crian_adole` DISABLE KEYS */;
INSERT INTO `inf_ad_crian_adole` (`ID_Crianca_Adoles`, `Crian_adoles_sem_fam_ou_ident_con`, `Inc_n_cad_nac_d_crian_ou_adole_desap`, `A_crian_adole_est_incl_no_cad_nac_d_ado`, `Aguardando_Pretendente`, `Em_Estagio_de_convivencia`, `Aguard_Sent_Jud_p_Adoc`, `Adole_cum_med_socioed`, `Qual`, `crian_adole_com_hist_d_sit_d_r`, `A_crian_adole_f_acol_ant`, `Sem_Informacao`, `Nome_Completo`, `Endereco`, `Dat_d_Ent`, `Dat_d_Sai`, `Mot_d_Acolhi`, `Mot_d_Desl`, `Nome_e_Parentesco`, `Parentesco`) VALUES
	(NULL, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 'asdasdas', 'asdasdasdas', '45/64/5665', '46/54/5646', 'asdasdasdasdasda', 'asdasdasdasdasd', 'asdasdasdasd', '5.Padrasto  '),
	(NULL, 1, 0, 0, 0, 0, 0, 1, 'Joojinho', 0, 0, 0, 'Gabriel Callotti', 'Rua dos Callotti', '12/11/1996', '12/09/1998', 'Bebe da cachaça  e nunca inteira no role', 'porque ele da callotti', 'Botinha', '3.Pai  ');
/*!40000 ALTER TABLE `inf_ad_crian_adole` ENABLE KEYS */;

-- Copiando estrutura para tabela sistemacasulo.inf_ad_sob_a_fam
CREATE TABLE IF NOT EXISTS `inf_ad_sob_a_fam` (
  `ID_Crianca_Adoles` int(100) DEFAULT NULL COMMENT 'ID da Criança/Adolescente',
  `Transtorno_Mental` tinyint(4) DEFAULT NULL COMMENT 'Transtorno Mental/Sofrimento Psiquico',
  `Tm_Quantidade` varchar(50) DEFAULT NULL COMMENT 'Transtorno Mental Sofrimento Psiquico (Quantidade)',
  `Dependencia_quimica` tinyint(4) DEFAULT NULL COMMENT 'Dependência química',
  `Dq_Quantidade` varchar(50) DEFAULT NULL COMMENT 'Dependência química (Quantidade)',
  `Pessoa_com_deficiencia` tinyint(4) DEFAULT NULL COMMENT 'Pessoa com deficiência',
  `Pcd_Quantidade` varchar(50) DEFAULT NULL COMMENT 'Pessoa com deficiência (Quantidade)',
  `Familia_Individuo_indigena` tinyint(4) DEFAULT NULL COMMENT 'Família/Indivíduo Indigena',
  `Fii_Quantidade` varchar(50) DEFAULT NULL COMMENT 'Familia/ Individuo indigena (Quantidade)',
  `Pessoa_presa_ou_em_cumprimento` tinyint(4) DEFAULT NULL COMMENT 'Pessoa presa ou em cumprimento de mse',
  `PPC_Quantidade` varchar(50) DEFAULT NULL COMMENT 'Pessoa presa ou em cumprimento de mse (Quantidade)',
  `Em_situacao_de_rua` tinyint(4) DEFAULT NULL COMMENT 'Em situacao de rua',
  `ESDR_Quantidade` varchar(50) DEFAULT NULL COMMENT 'Em situacao de rua (Quantidade)',
  `Outra_especificidade` varchar(100) DEFAULT NULL COMMENT 'Outra especificidade',
  `OE_Quantidade` varchar(100) DEFAULT NULL COMMENT 'Outra especificidade (Quantidade)',
  `Outra_especificidades` varchar(100) DEFAULT NULL COMMENT 'Outra especificidade2',
  `OEP_Quantidade` varchar(100) DEFAULT NULL COMMENT 'Outra especificidade (Quantidade)2',
  KEY `FK_inf_ad_sob_a_fam_info_crianca_adolescente` (`ID_Crianca_Adoles`),
  CONSTRAINT `FK_inf_ad_sob_a_fam_info_crianca_adolescente` FOREIGN KEY (`ID_Crianca_Adoles`) REFERENCES `info_crianca_adolescente` (`ID_Crianca_Adoles`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela sistemacasulo.inf_ad_sob_a_fam: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `inf_ad_sob_a_fam` DISABLE KEYS */;
INSERT INTO `inf_ad_sob_a_fam` (`ID_Crianca_Adoles`, `Transtorno_Mental`, `Tm_Quantidade`, `Dependencia_quimica`, `Dq_Quantidade`, `Pessoa_com_deficiencia`, `Pcd_Quantidade`, `Familia_Individuo_indigena`, `Fii_Quantidade`, `Pessoa_presa_ou_em_cumprimento`, `PPC_Quantidade`, `Em_situacao_de_rua`, `ESDR_Quantidade`, `Outra_especificidade`, `OE_Quantidade`, `Outra_especificidades`, `OEP_Quantidade`) VALUES
	(NULL, 1, '1', 0, '', 0, '', 0, '', 0, '', 0, '', '', '', '', '');
/*!40000 ALTER TABLE `inf_ad_sob_a_fam` ENABLE KEYS */;

-- Copiando estrutura para tabela sistemacasulo.inf_d_serv_d_acolhi
CREATE TABLE IF NOT EXISTS `inf_d_serv_d_acolhi` (
  `ID_Crianca_Adoles` int(8) DEFAULT NULL COMMENT 'ID da Criança/Adolescente',
  `Data` varchar(10) DEFAULT NULL COMMENT 'Data do Cadastro',
  `N_Guia_Recolhimento` varchar(50) DEFAULT NULL COMMENT 'Número da guia de recolhimento',
  `Nome_d_serv_d_acolhi_insti` varchar(100) DEFAULT NULL COMMENT 'Nome do Serviço de Acolhimento Institucional',
  `Endereco` varchar(100) DEFAULT NULL COMMENT 'Endereço do Serviço de Acolhimento',
  `Telefone` varchar(10) DEFAULT NULL COMMENT 'Telefone (Celular,Residencial ou comercial)',
  `Dirigente` varchar(100) DEFAULT NULL COMMENT 'Dirigente Responsável',
  KEY `FK_inf_d_serv_d_acolhi_info_crianca_adolescente` (`ID_Crianca_Adoles`),
  CONSTRAINT `FK_inf_d_serv_d_acolhi_info_crianca_adolescente` FOREIGN KEY (`ID_Crianca_Adoles`) REFERENCES `info_crianca_adolescente` (`ID_Crianca_Adoles`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela sistemacasulo.inf_d_serv_d_acolhi: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `inf_d_serv_d_acolhi` DISABLE KEYS */;
INSERT INTO `inf_d_serv_d_acolhi` (`ID_Crianca_Adoles`, `Data`, `N_Guia_Recolhimento`, `Nome_d_serv_d_acolhi_insti`, `Endereco`, `Telefone`, `Dirigente`) VALUES
	(NULL, '12/11/1996', '2019/06', 'Jooj nelson', 'Rua dos nelson', '(19) 34689', 'Vitor Poyo'),
	(NULL, '17/05/2019', '8007/3', 'Amigos do Casulo', ' Rua José Canineo, 316 ,  Residencial Horto Florestal Jacyra I ', '(19) 3958-', 'Vinicius');
/*!40000 ALTER TABLE `inf_d_serv_d_acolhi` ENABLE KEYS */;

-- Copiando estrutura para tabela sistemacasulo.irmaos_7
CREATE TABLE IF NOT EXISTS `irmaos_7` (
  `ID_Crianca_Adoles` int(100) DEFAULT NULL COMMENT 'ID da Criança/Adolescente',
  `Sem_Parentesco` tinyint(4) DEFAULT NULL COMMENT 'Sem parentesco',
  `Nome_Reside` varchar(50) DEFAULT NULL COMMENT 'Nome Completo',
  `Sexo_Reside` varchar(50) DEFAULT NULL COMMENT 'Sexo',
  `Idade_Reside` varchar(50) DEFAULT NULL COMMENT 'Idade',
  `Nome_do_parente_Reside` varchar(50) DEFAULT NULL COMMENT 'Nome do Parente',
  `Parentesco_Reside` varchar(50) DEFAULT NULL COMMENT 'Parentesco',
  `Endereco_Reside` varchar(50) DEFAULT NULL COMMENT 'Endereço',
  `Telefone_Reside` varchar(50) DEFAULT NULL COMMENT 'Telefone (Residencial,Celular ou Comercial)',
  `Irmaos_nesse_Acolhimento` tinyint(4) DEFAULT NULL COMMENT 'Irmão nesse Acolhimento',
  `Nome_Possui` varchar(50) DEFAULT NULL COMMENT 'Nome Completo',
  `Sexo_Possui` varchar(50) DEFAULT NULL COMMENT 'Sexo',
  `Idade_Possui` varchar(50) DEFAULT NULL COMMENT 'Idade',
  `Data_do_acohimento_Possui` varchar(50) DEFAULT NULL COMMENT 'Data do Acolhimento',
  `Motivo_do_acolhimento_Possui` varchar(50) DEFAULT NULL COMMENT 'Motivo do Acolhimento',
  `Possui_Irmaos_em_outro_acolhimento` tinyint(4) DEFAULT NULL COMMENT 'Possui Irmãos em outro Acolhimento',
  `Nao_foi_Acolhido` varchar(50) DEFAULT NULL COMMENT 'Não foi Acolhido',
  `Outro_Nome` varchar(50) DEFAULT NULL COMMENT 'Nome Completo',
  `Outro_Sexo` varchar(50) DEFAULT NULL COMMENT 'Sexo',
  `Outro_Idade` varchar(50) DEFAULT NULL COMMENT 'Idade',
  `Outro_Data_de_Acolhimento` varchar(50) DEFAULT NULL COMMENT 'Data de Acolhimento',
  `Outro_Nome_do_Servico_Acolhimento` varchar(50) DEFAULT NULL COMMENT 'Nome do Serviço de Acolhimento',
  `Outro_Endereco_do_Servico_Acolhimento` varchar(50) DEFAULT NULL COMMENT 'Endereço do Serviço de Acolhimento',
  `Outro_Tecnico_Responsavel` varchar(50) DEFAULT NULL COMMENT 'Técnico Responsável',
  `Irmaos_Adotado` tinyint(4) DEFAULT NULL COMMENT 'Irmãos Adotados',
  `Quantos_Irmaos` varchar(50) DEFAULT NULL COMMENT 'Quantos Irmãos',
  `Irmao_Falecido` tinyint(4) DEFAULT NULL COMMENT 'Irmão Falecido',
  `Falecido_Nome` varchar(50) DEFAULT NULL COMMENT 'Nome Completo',
  `Falecido_Data_Nascimento` varchar(10) DEFAULT NULL COMMENT 'Data de Nascimento',
  `Falecido_Data_Falecimento` varchar(10) DEFAULT NULL COMMENT 'Data de Falecimento',
  `Falecido_Causa_Falecimento` varchar(50) DEFAULT NULL COMMENT 'Causa do Falecimento',
  KEY `FK_irmaos_7_info_crianca_adolescente` (`ID_Crianca_Adoles`),
  CONSTRAINT `FK_irmaos_7_info_crianca_adolescente` FOREIGN KEY (`ID_Crianca_Adoles`) REFERENCES `info_crianca_adolescente` (`ID_Crianca_Adoles`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela sistemacasulo.irmaos_7: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `irmaos_7` DISABLE KEYS */;
INSERT INTO `irmaos_7` (`ID_Crianca_Adoles`, `Sem_Parentesco`, `Nome_Reside`, `Sexo_Reside`, `Idade_Reside`, `Nome_do_parente_Reside`, `Parentesco_Reside`, `Endereco_Reside`, `Telefone_Reside`, `Irmaos_nesse_Acolhimento`, `Nome_Possui`, `Sexo_Possui`, `Idade_Possui`, `Data_do_acohimento_Possui`, `Motivo_do_acolhimento_Possui`, `Possui_Irmaos_em_outro_acolhimento`, `Nao_foi_Acolhido`, `Outro_Nome`, `Outro_Sexo`, `Outro_Idade`, `Outro_Data_de_Acolhimento`, `Outro_Nome_do_Servico_Acolhimento`, `Outro_Endereco_do_Servico_Acolhimento`, `Outro_Tecnico_Responsavel`, `Irmaos_Adotado`, `Quantos_Irmaos`, `Irmao_Falecido`, `Falecido_Nome`, `Falecido_Data_Nascimento`, `Falecido_Data_Falecimento`, `Falecido_Causa_Falecimento`) VALUES
	(NULL, 1, 'asdasdasdasd', 'Feminino', 'XT660', 'asdasdasdasd', 'asdasdasd', 'asdasd', '', 0, '', '', '', '', '', 0, '', '', '', '', '', '', '', '', 0, '', 0, '', '', '', ''),
	(NULL, 1, 'Joojinho', 'Masculino', '22 anos', 'Jooj nelson dos jooojuas', 'Tio', 'Rua dos nelsinhos,688, Campo limpo', '(19) 3467-2236', 0, '', '', '', '', '', 0, '', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '');
/*!40000 ALTER TABLE `irmaos_7` ENABLE KEYS */;

-- Copiando estrutura para tabela sistemacasulo.programas_e_beneficios_sociais
CREATE TABLE IF NOT EXISTS `programas_e_beneficios_sociais` (
  `ID_Crianca_Adoles` int(100) DEFAULT NULL COMMENT 'Nome Completo (Chave Estrangeira)',
  `A_fam_rec_din_d_alg_program_soc` varchar(50) DEFAULT NULL COMMENT 'A família recebe dinheiro de algum programa social?',
  `Bolsa_Familia` tinyint(4) DEFAULT NULL COMMENT 'Bolsa Família',
  `PETI` tinyint(4) DEFAULT NULL COMMENT 'PETI',
  `BPC_pessoa_da_familia` tinyint(4) DEFAULT NULL COMMENT 'BPC ( Pessoa da Família)',
  `BPC_crianca_adolescente_acolhido` tinyint(4) DEFAULT NULL COMMENT 'BPC (Criança/Adolescente Acolhido)',
  `Outro_Qual` varchar(50) DEFAULT NULL COMMENT 'Outro/Qual',
  KEY `FK_programas_e_beneficios_sociais_info_crianca_adolescente` (`ID_Crianca_Adoles`),
  CONSTRAINT `FK_programas_e_beneficios_sociais_info_crianca_adolescente` FOREIGN KEY (`ID_Crianca_Adoles`) REFERENCES `info_crianca_adolescente` (`ID_Crianca_Adoles`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela sistemacasulo.programas_e_beneficios_sociais: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `programas_e_beneficios_sociais` DISABLE KEYS */;
INSERT INTO `programas_e_beneficios_sociais` (`ID_Crianca_Adoles`, `A_fam_rec_din_d_alg_program_soc`, `Bolsa_Familia`, `PETI`, `BPC_pessoa_da_familia`, `BPC_crianca_adolescente_acolhido`, `Outro_Qual`) VALUES
	(NULL, 'Sim', 1, 0, 0, 0, '');
/*!40000 ALTER TABLE `programas_e_beneficios_sociais` ENABLE KEYS */;

-- Copiando estrutura para tabela sistemacasulo.telalogin
CREATE TABLE IF NOT EXISTS `telalogin` (
  `ID_Funcionario` int(8) NOT NULL AUTO_INCREMENT,
  `Nome_do_Funcionario` varchar(100) NOT NULL,
  `Login` varchar(100) DEFAULT NULL,
  `Senha` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID_Funcionario`),
  UNIQUE KEY `Login` (`Login`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela sistemacasulo.telalogin: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `telalogin` DISABLE KEYS */;
INSERT INTO `telalogin` (`ID_Funcionario`, `Nome_do_Funcionario`, `Login`, `Senha`) VALUES
	(1, 'Amigos do Casulo', 'admin', 'admin123');
/*!40000 ALTER TABLE `telalogin` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
