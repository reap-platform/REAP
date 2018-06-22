-- 参数
----统一参数
INSERT INTO CONFIG VALUES('r.p.d.s.l.path','reap','prd','default','logging.file','${REAP_HOME:.}/logs/${spring.application.name}/app.log');
INSERT INTO CONFIG VALUES('r.p.d.l.l.root','reap','prd','default','logging.level.root','INFO');
INSERT INTO CONFIG VALUES('r.p.d.l.l.o.s.web','reap','prd','default','logging.level.org.springframework.web','DEBUG');
INSERT INTO CONFIG VALUES('r.p.d.l.l.o.h.SQL','reap','prd','default','logging.level.org.hibernate.SQL','DEBUG');
INSERT INTO CONFIG VALUES('r.p.d.l.l.o.h.t.d.sql','reap','prd','default','logging.level.org.hibernate.type.descriptor.sql','DEBUG');
INSERT INTO CONFIG VALUES('r.p.d.s.z.baseUrl','reap','prd','default','spring.zipkin.baseUrl','http://reap-tracing');
INSERT INTO CONFIG VALUES ('r.p.d.s.s.w.additionalSkipPattern', 'reap', 'prd', 'default', 'spring.sleuth.web.skipPattern', '/|/api-docs.*|/autoconfig|/configprops|/dump|/health|/info|/metrics.*|/mappings|/trace|/swagger.*|.*\.png|.*\.css|.*\.js|.*\.woff|.*\.html|/favicon.ico|/hystrix.stream|/application/.*');
INSERT INTO CONFIG VALUES('r.p.d.s.s.s.probability','reap','prd','default','spring.sleuth.sampler.probability','1.0');
INSERT INTO CONFIG VALUES('r.p.d.s.c.enable','reap','prd','default','server.compression.enable','true');
INSERT INTO CONFIG VALUES('r.p.d.s.c.mime-types','reap','prd','default','server.compression.mime-types','aplication/json,application/xml,text/html,text/xml,text/plain,application/javascript,text/css');
INSERT INTO CONFIG VALUES('r.p.d.s.r.static-locations', 'reap', 'prd', 'default','spring.resources.static-locations','file:apps/${spring.application.name}/static,classpath:static');
INSERT INTO CONFIG VALUES('r.p.d.s.d.url', 'reap', 'prd', 'default', 'spring.datasource.url', 'jdbc:h2:tcp://localhost/~/REAPDB');
INSERT INTO CONFIG VALUES('r.p.d.s.d.username', 'reap', 'prd', 'default', 'spring.datasource.username', 'reap');
INSERT INTO CONFIG VALUES('r.p.d.s.d.password', 'reap', 'prd', 'default', 'spring.datasource.password', 'reap');
INSERT INTO CONFIG VALUES('r.p.d.s.d.driver-class-name', 'reap', 'prd', 'default', 'spring.datasource.driver-class-name', 'org.h2.Driver');
INSERT INTO CONFIG VALUES('r.p.d.s.j.open-in-view', 'reap', 'prd', 'default', 'spring.jpa.open-in-view', 'true');
INSERT INTO CONFIG VALUES('r.p.d.s.j.show-sql', 'reap', 'prd', 'default', 'spring.jpa.show-sql', 'true');
INSERT INTO CONFIG VALUES('r.p.d.s.j.h.ddl-auto', 'reap', 'prd', 'default', 'spring.jpa.hibernate.ddl-auto', 'none');
INSERT INTO CONFIG VALUES('r.p.d.s.m.basename', 'reap', 'prd', 'default', 'spring.messages.basename', 'i18n/messages');
INSERT INTO CONFIG VALUES('r.p.d.e.c.i-i-i-r-i-s','reap','prd','default','eureka.client.initial-instance-info-replication-interval-seconds','5');
INSERT INTO CONFIG VALUES('r.p.d.e.c.i-i-r-i-s','reap','prd','default','eureka.client.instance-info-replication-interval-seconds','5');
INSERT INTO CONFIG VALUES('r.p.d.e.c.r-f-r-i-s','reap','prd','default','eureka.client.registry-fetch-interval-seconds','5');
INSERT INTO CONFIG VALUES('r.p.d.m.e.w.e.include','reap','prd','default','management.endpoints.web.exposure.include','*');
----统一参数（可选）
-- INSERT INTO CONFIG VALUES('r.p.d.r.l.l.destinations','reap','prd','default','reap.logging.logstash.destinations','your.logstash.ip.address:port');
-- INSERT INTO CONFIG VALUES('r.p.d.r.l.l.b.size','reap','prd','default','reap.logging.logstash.buffer.size','0');
----应用参数
INSERT INTO CONFIG VALUES('r-f.p.d.s.p','reap-facility','prd','default','server.port','8761');
INSERT INTO CONFIG VALUES('r-f.p.d.s.s.z.enabled','reap-facility','prd','default','spring.sleuth.zuul.enabled','false');
INSERT INTO CONFIG VALUES ('r-f.p.d.s.s.w.additionalSkipPattern', 'reap-facility', 'prd', 'default', 'spring.sleuth.web.additionalSkipPattern', '/eureka.*');
INSERT INTO CONFIG VALUES ('r-t.p.d.s.port', 'reap-tracing', 'prd', 'default', 'server.port', '9411');
INSERT INTO CONFIG VALUES('r-t.p.d.s.s.h.enabled','reap-tracing','prd','default','spring.sleuth.http.enabled','false');
INSERT INTO CONFIG VALUES('r-t.p.d.s.s.w.enabled','reap-tracing','prd','default','spring.sleuth.web.enabled','false');
INSERT INTO CONFIG VALUES ('r-r.p.d.s.port','reap-rbac','prd','default','server.port','8070');
INSERT INTO CONFIG VALUES ('r-r.p.d.p.m.salt','reap-rbac','prd','default','password.md5.salt', 'reap');
INSERT INTO CONFIG VALUES ('r-p.p.d.s.port', 'reap-portal', 'prd', 'default', 'server.port', '8081');
INSERT INTO CONFIG VALUES ('r-p.p.d.t.key', 'reap-portal', 'prd', 'default', 'token.key', '123456');

-- 路由
INSERT INTO ROUTE VALUES('reap','reap','/reap/**','reap-portal',null,null); -- 统一 UI路由
INSERT INTO ROUTE VALUES('reap-facility','reap-facility','/apis/reap-facility/**','reap-facility',null,null);
INSERT INTO ROUTE VALUES('reap-facility-ui','reap-facility-ui','/ui/reap-facility/**','reap-facility',null,null);
INSERT INTO ROUTE VALUES('reap-rbac','reap-rbac','/apis/reap-rbac/**','reap-rbac',null,null);
INSERT INTO ROUTE VALUES('reap-rbac-ui','reap-rbac-ui','/ui/reap-rbac/**','reap-rbac',null,null);
INSERT INTO ROUTE VALUES('reap-portal', 'reap-portal' ,'/apis/reap-portal/**' ,'reap-portal' ,null ,null);
INSERT INTO ROUTE VALUES('reap-portal-ui', 'reap-portal-ui', '/ui/reap-portal/**' ,'reap-portal' ,null ,null);

-- 功能
INSERT INTO FUNCTION (ID,SERVICE_ID,CODE,NAME,TYPE,ACTION) VALUES ('REAPFA0001','reap-facility','REAPFA0001','参数管理','M',null);
INSERT INTO FUNCTION (ID,SERVICE_ID,CODE,NAME,TYPE,ACTION) VALUES ('REAPFA0002','reap-facility','REAPFA0002','路由管理','M',null);
INSERT INTO FUNCTION (ID,SERVICE_ID,CODE,NAME,TYPE,ACTION) VALUES ('REAPRB0001','reap-rbac','REAPRB0001','机构管理','M','');
INSERT INTO FUNCTION (ID,SERVICE_ID,CODE,NAME,TYPE,ACTION) VALUES ('REAPRB0002','reap-rbac','REAPRB0002','用户管理','M','');
INSERT INTO FUNCTION (ID,SERVICE_ID,CODE,NAME,TYPE,ACTION) VALUES ('REAPRB0003','reap-rbac','REAPRB0003','岗位管理','M','');
INSERT INTO FUNCTION (ID,SERVICE_ID,CODE,NAME,TYPE,ACTION) VALUES ('REAPRB0004','reap-rbac','REAPRB0004','功能管理','M','');
INSERT INTO FUNCTION (ID,SERVICE_ID,CODE,NAME,TYPE,ACTION) VALUES ('REAPPO0001','reap-portal','REAPPO0001','菜单管理','M','');

-- 初始数据
-- 默认用户/密码： admin/888888
INSERT INTO ORG (ID,NAME,CODE,CREATE_TIME,PARENT_ID,REMARK,LEAF) values ('0001','机构','01',null,null,null,'N');
INSERT INTO USER (ID,USERNAME,NAME,PASSWORD,EMAIL,PHONE_NO,CREATE_TIME,GENDER,ORG_ID,REMARK) VALUES ('0001','admin','管理员','d8721f8bfb91e5c5588bec115aeaf220','admin@reap.org',18603010499, null , 'M','0001', null);
INSERT INTO ROLE (ID,CREATE_TIME,NAME,REMARK) VALUES('0001', NULL, '系统管理岗', NULL);
INSERT INTO USER_ROLE (USER_ID,ROLE_ID) VALUES ('0001','0001');
INSERT INTO ROLE_FUNCTIONS (ROLE_ID, FUNCTIONS_ID) VALUES ('0001', 'REAPFA0001');
INSERT INTO ROLE_FUNCTIONS (ROLE_ID, FUNCTIONS_ID) VALUES ('0001', 'REAPFA0002');
INSERT INTO ROLE_FUNCTIONS (ROLE_ID, FUNCTIONS_ID) VALUES ('0001', 'REAPPO0001');
INSERT INTO ROLE_FUNCTIONS (ROLE_ID, FUNCTIONS_ID) VALUES ('0001', 'REAPRB0001');
INSERT INTO ROLE_FUNCTIONS (ROLE_ID, FUNCTIONS_ID) VALUES ('0001', 'REAPRB0002');
INSERT INTO ROLE_FUNCTIONS (ROLE_ID, FUNCTIONS_ID) VALUES ('0001', 'REAPRB0003');
INSERT INTO ROLE_FUNCTIONS (ROLE_ID, FUNCTIONS_ID) VALUES ('0001', 'REAPRB0004');
INSERT INTO MENU (ID, NAME, PARENT_ID, LEVEL,SEQUENCE, LEAF, FUNCTION_CODE,REMARK,CREATE_TIME) VALUES ('01'   , '系统管理', NULL, 1, 1,'N',NULL, NULL ,NULL);
INSERT INTO MENU (ID, NAME, PARENT_ID, LEVEL,SEQUENCE, LEAF, FUNCTION_CODE,REMARK,CREATE_TIME) VALUES ('02'   , '平台管理', NULL, 1, 2,'N',NULL, NULL ,NULL);
INSERT INTO MENU (ID, NAME, PARENT_ID, LEVEL,SEQUENCE, LEAF, FUNCTION_CODE,REMARK,CREATE_TIME) VALUES ('0101' , '机构管理', '01', 2, 1,'Y','REAPRB0001', NULL ,NULL);
INSERT INTO MENU (ID, NAME, PARENT_ID, LEVEL,SEQUENCE, LEAF, FUNCTION_CODE,REMARK,CREATE_TIME) VALUES ('0102' , '用户管理', '01', 2, 2,'Y','REAPRB0002', NULL ,NULL);
INSERT INTO MENU (ID, NAME, PARENT_ID, LEVEL,SEQUENCE, LEAF, FUNCTION_CODE,REMARK,CREATE_TIME) VALUES ('0103' , '功能管理', '01', 2, 3,'Y','REAPRB0004', NULL ,NULL);
INSERT INTO MENU (ID, NAME, PARENT_ID, LEVEL,SEQUENCE, LEAF, FUNCTION_CODE,REMARK,CREATE_TIME) VALUES ('0104' , '岗位管理', '01', 2, 4,'Y','REAPRB0003', NULL ,NULL);
INSERT INTO MENU (ID, NAME, PARENT_ID, LEVEL,SEQUENCE, LEAF, FUNCTION_CODE,REMARK,CREATE_TIME) VALUES ('0105' , '菜单管理', '01', 2, 5,'Y','REAPPO0001', NULL ,NULL);
INSERT INTO MENU (ID, NAME, PARENT_ID, LEVEL,SEQUENCE, LEAF, FUNCTION_CODE,REMARK,CREATE_TIME) VALUES ('0201' , '参数管理', '02', 2, 1,'Y','REAPFA0001', NULL ,NULL);
INSERT INTO MENU (ID, NAME, PARENT_ID, LEVEL,SEQUENCE, LEAF, FUNCTION_CODE,REMARK,CREATE_TIME) VALUES ('0202' , '路由管理', '02', 2, 2,'Y','REAPFA0002', NULL ,NULL);