CREATE TABLE t_user (
  id int(10) NOT NULL AUTO_INCREMENT,
  loginId varchar(20) DEFAULT NULL,
  userName varchar(100) DEFAULT NULL,
  roleId int(10),
  note varchar(255) DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

INSERT INTO t_user(loginId,userName,roleId,note) VALUES ('queen', '奎恩', 1, '专门负责提鞋的。。。');
INSERT INTO t_user(loginId,userName,roleId,note) VALUES ('king', '金狮子', 2, '磁性果实能力');
INSERT INTO t_user(loginId,userName,roleId,note) VALUES ('Lucy', '路西', 3, '打败多弗朗明哥。。。');
=========================================================
CREATE TABLE t_role (
  id int(10) NOT NULL AUTO_INCREMENT,
  roleName varchar(20) DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

INSERT INTO t_role(roleName) VALUES ('自定义角色');
INSERT INTO t_role(roleName) VALUES ('前海贼');
INSERT INTO t_role(roleName) VALUES ('未来海贼王');