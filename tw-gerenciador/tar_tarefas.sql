CREATE TABLE `tar_tarefas` (
  `tar_id` int(11) NOT NULL AUTO_INCREMENT,
  `tar_titulo` varchar(50) NOT NULL,
  `tar_descricao` varchar(100) DEFAULT NULL,
  `tar_data_expiracao` date NOT NULL,
  `tar_concluida` bit(1) DEFAULT b'0',
  `usr_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`tar_id`),
  KEY `fk_tarefas_id_usuario` (`usr_id`),
  CONSTRAINT `fk_tarefas_id_usuario` FOREIGN KEY (`usr_id`) REFERENCES `usr_usuarios` (`usr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

CREATE TABLE `usr_usuarios` (
  `usr_id` int(11) NOT NULL AUTO_INCREMENT,
  `usr_email` varchar(100) NOT NULL,
  `usr_senha` varchar(100) NOT NULL,
  PRIMARY KEY (`usr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

