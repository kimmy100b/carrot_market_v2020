CREATE TABLE `community_bbs` (
	`sid` INT(10) NOT NULL AUTO_INCREMENT COMMENT '게시판 sid',
	`user` VARCHAR(20) NULL DEFAULT NULL COMMENT '작성자 id' COLLATE 'utf8_general_ci',
	`title` VARCHAR(120) NOT NULL COMMENT '제목' COLLATE 'utf8_general_ci',
	`content` LONGTEXT NOT NULL COMMENT '본문' COLLATE 'utf8_general_ci',
	`regDate` DATETIME NULL DEFAULT NULL COMMENT '등록일',
	`modDate` DATETIME NULL DEFAULT NULL COMMENT '수정일',
	`delDate` DATETIME NULL DEFAULT NULL COMMENT '삭제일',
	`del_yn` ENUM('Y','N') NULL DEFAULT NULL COMMENT '삭제여부' COLLATE 'utf8_general_ci',
	PRIMARY KEY (`sid`) USING BTREE
)
COMMENT='자유게시판 DB'
COLLATE='utf8_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=9
;
