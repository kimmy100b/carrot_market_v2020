CREATE TABLE `community_bbs` (
	`sid` INT(10) NOT NULL AUTO_INCREMENT COMMENT '�Խ��� sid',
	`user` VARCHAR(20) NULL DEFAULT NULL COMMENT '�ۼ��� id' COLLATE 'utf8_general_ci',
	`title` VARCHAR(120) NOT NULL COMMENT '����' COLLATE 'utf8_general_ci',
	`content` LONGTEXT NOT NULL COMMENT '����' COLLATE 'utf8_general_ci',
	`regDate` DATETIME NULL DEFAULT NULL COMMENT '�����',
	`modDate` DATETIME NULL DEFAULT NULL COMMENT '������',
	`delDate` DATETIME NULL DEFAULT NULL COMMENT '������',
	`del_yn` ENUM('Y','N') NULL DEFAULT NULL COMMENT '��������' COLLATE 'utf8_general_ci',
	PRIMARY KEY (`sid`) USING BTREE
)
COMMENT='�����Խ��� DB'
COLLATE='utf8_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=9
;
