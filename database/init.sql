-- 应用
INSERT INTO REAP_FACILITY.APPLICATION(ID, NAME, SYSTEM_CODE,OWNER,REMARK) VALUES('reap-portal', 'UI 门户', 'reap-portal', 'admin', '');
INSERT INTO REAP_FACILITY.APPLICATION(ID, NAME, SYSTEM_CODE,OWNER,REMARK) VALUES('reap-rbac', '用户管理服务', 'reap-rbac', 'admin', '');
INSERT INTO REAP_FACILITY.APPLICATION(ID, NAME, SYSTEM_CODE,OWNER,REMARK) VALUES('reap-facility', '基础设备服务', 'reap-facility', 'admin', '');
INSERT INTO REAP_FACILITY.APPLICATION(ID, NAME, SYSTEM_CODE,OWNER,REMARK) VALUES('reap-tracing', '问题跟踪服务', 'reap-tracing', 'admin', '');

-- 参数
----统一参数
INSERT INTO REAP_FACILITY.CONFIG (ID, SYSTEM_CODE, PROFILE, LABEL, NAME, VALUE) VALUES('r.p.d.s.s.c.r.refreshable','reap','prd','default','spring.cloud.refresh.refreshable','none');
INSERT INTO REAP_FACILITY.CONFIG (ID, SYSTEM_CODE, PROFILE, LABEL, NAME, VALUE) VALUES('r.p.d.s.l.path','reap','prd','default','logging.file','${REAP_HOME:.}/logs/${spring.application.name}/app.log');
INSERT INTO REAP_FACILITY.CONFIG (ID, SYSTEM_CODE, PROFILE, LABEL, NAME, VALUE) VALUES('r.p.d.l.l.root','reap','prd','default','logging.level.root','INFO');
INSERT INTO REAP_FACILITY.CONFIG (ID, SYSTEM_CODE, PROFILE, LABEL, NAME, VALUE) VALUES('r.p.d.l.l.o.r.','reap','prd','default','logging.level.org.reap','DEBUG');
INSERT INTO REAP_FACILITY.CONFIG (ID, SYSTEM_CODE, PROFILE, LABEL, NAME, VALUE) VALUES('r.p.d.l.l.o.s.d.mybatis','reap','prd','default','logging.level.org.springframework.data.mybatis','DEBUG');
INSERT INTO REAP_FACILITY.CONFIG (ID, SYSTEM_CODE, PROFILE, LABEL, NAME, VALUE) VALUES('r.p.d.l.l.o.s.web','reap','prd','default','logging.level.org.springframework.web','DEBUG');
INSERT INTO REAP_FACILITY.CONFIG (ID, SYSTEM_CODE, PROFILE, LABEL, NAME, VALUE) VALUES('r.p.d.s.z.baseUrl','reap','prd','default','spring.zipkin.baseUrl','http://reap-tracing');
INSERT INTO REAP_FACILITY.CONFIG (ID, SYSTEM_CODE, PROFILE, LABEL, NAME, VALUE) VALUES ('r.p.d.s.s.w.skipPattern', 'reap', 'prd', 'default', 'spring.sleuth.web.skipPattern', '/|/api-docs.*|/autoconfig|/configprops|/dump|/health|/info|/metrics.*|/mappings|/trace|/swagger.*|.*\.png|.*\.css|.*\.js|.*\.woff|.*\.html|/favicon.ico|/hystrix.stream|/application/.*');
INSERT INTO REAP_FACILITY.CONFIG (ID, SYSTEM_CODE, PROFILE, LABEL, NAME, VALUE) VALUES('r.p.d.s.s.s.probability','reap','prd','default','spring.sleuth.sampler.probability','1.0');
INSERT INTO REAP_FACILITY.CONFIG (ID, SYSTEM_CODE, PROFILE, LABEL, NAME, VALUE) VALUES('r.p.d.s.c.enable','reap','prd','default','server.compression.enable','true');
INSERT INTO REAP_FACILITY.CONFIG (ID, SYSTEM_CODE, PROFILE, LABEL, NAME, VALUE) VALUES('r.p.d.s.c.mime-types','reap','prd','default','server.compression.mime-types','aplication/json,application/xml,text/html,text/xml,text/plain,application/javascript,text/css');
INSERT INTO REAP_FACILITY.CONFIG (ID, SYSTEM_CODE, PROFILE, LABEL, NAME, VALUE) VALUES('r.p.d.s.r.static-locations', 'reap', 'prd', 'default','spring.resources.static-locations','file:apps/${spring.application.name}/static,classpath:static');
INSERT INTO REAP_FACILITY.CONFIG (ID, SYSTEM_CODE, PROFILE, LABEL, NAME, VALUE) VALUES('r.p.d.s.d.url', 'reap', 'prd', 'default', 'spring.datasource.url', 'jdbc:h2:tcp://localhost/~/REAPDB');
INSERT INTO REAP_FACILITY.CONFIG (ID, SYSTEM_CODE, PROFILE, LABEL, NAME, VALUE) VALUES('r.p.d.s.d.username', 'reap', 'prd', 'default', 'spring.datasource.username', 'reap');
INSERT INTO REAP_FACILITY.CONFIG (ID, SYSTEM_CODE, PROFILE, LABEL, NAME, VALUE) VALUES('r.p.d.s.d.password', 'reap', 'prd', 'default', 'spring.datasource.password', 'reap');
INSERT INTO REAP_FACILITY.CONFIG (ID, SYSTEM_CODE, PROFILE, LABEL, NAME, VALUE) VALUES('r.p.d.s.d.driver-class-name', 'reap', 'prd', 'default', 'spring.datasource.driver-class-name', 'org.h2.Driver');
INSERT INTO REAP_FACILITY.CONFIG (ID, SYSTEM_CODE, PROFILE, LABEL, NAME, VALUE) VALUES('r.p.d.s.m.basename', 'reap', 'prd', 'default', 'spring.messages.basename', 'i18n/messages');
-- 应用启动后第一次向 eureka 注册的时间（单位秒）
INSERT INTO REAP_FACILITY.CONFIG (ID, SYSTEM_CODE, PROFILE, LABEL, NAME, VALUE) VALUES('r.p.d.e.c.i-i-i-r-i-s','reap','prd','default','eureka.client.initial-instance-info-replication-interval-seconds','5');
-- 应用启动后向 eureka 注册的周期（单位秒）
INSERT INTO REAP_FACILITY.CONFIG (ID, SYSTEM_CODE, PROFILE, LABEL, NAME, VALUE) VALUES('r.p.d.e.c.i-i-r-i-s','reap','prd','default','eureka.client.instance-info-replication-interval-seconds','5');
-- 应用客户端
INSERT INTO REAP_FACILITY.CONFIG (ID, SYSTEM_CODE, PROFILE, LABEL, NAME, VALUE) VALUES('r.p.d.e.c.r-f-r-i-s','reap','prd','default','eureka.client.registry-fetch-interval-seconds','5');

INSERT INTO REAP_FACILITY.CONFIG (ID, SYSTEM_CODE, PROFILE, LABEL, NAME, VALUE) VALUES('r.p.d.m.e.w.e.include','reap','prd','default','management.endpoints.web.exposure.include','*');
----统一参数（可选）
-- INSERT INTO REAP_FACILITY.CONFIG (ID, SYSTEM_CODE, PROFILE, LABEL, NAME, VALUE) VALUES('r.p.d.r.l.l.destinations','reap','prd','default','reap.logging.logstash.destinations','47.95.243.70:5602');
-- INSERT INTO REAP_FACILITY.CONFIG (ID, SYSTEM_CODE, PROFILE, LABEL, NAME, VALUE) VALUES('r.p.d.r.l.l.b.size','reap','prd','default','reap.logging.logstash.buffer.size','0');
----应用参数
INSERT INTO REAP_FACILITY.CONFIG (ID, SYSTEM_CODE, PROFILE, LABEL, NAME, VALUE) VALUES('r-f.p.d.s.p','reap-facility','prd','default','server.port','8761');
INSERT INTO REAP_FACILITY.CONFIG (ID, SYSTEM_CODE, PROFILE, LABEL, NAME, VALUE) VALUES('r-f.p.d.s.s.z.enabled','reap-facility','prd','default','spring.sleuth.zuul.enabled','false');
INSERT INTO REAP_FACILITY.CONFIG (ID, SYSTEM_CODE, PROFILE, LABEL, NAME, VALUE) VALUES ('r-f.p.d.s.s.w.additionalSkipPattern', 'reap-facility', 'prd', 'default', 'spring.sleuth.web.additionalSkipPattern', '/eureka.*');
INSERT INTO REAP_FACILITY.CONFIG (ID, SYSTEM_CODE, PROFILE, LABEL, NAME, VALUE) VALUES ('r-t.p.d.s.port', 'reap-tracing', 'prd', 'default', 'server.port', '9411');
INSERT INTO REAP_FACILITY.CONFIG (ID, SYSTEM_CODE, PROFILE, LABEL, NAME, VALUE) VALUES('r-t.p.d.s.s.h.enabled','reap-tracing','prd','default','spring.sleuth.http.enabled','false');
INSERT INTO REAP_FACILITY.CONFIG (ID, SYSTEM_CODE, PROFILE, LABEL, NAME, VALUE) VALUES('r-t.p.d.s.s.w.enabled','reap-tracing','prd','default','spring.sleuth.web.enabled','false');
INSERT INTO REAP_FACILITY.CONFIG (ID, SYSTEM_CODE, PROFILE, LABEL, NAME, VALUE) VALUES ('r-r.p.d.s.port','reap-rbac','prd','default','server.port','8070');
INSERT INTO REAP_FACILITY.CONFIG (ID, SYSTEM_CODE, PROFILE, LABEL, NAME, VALUE) VALUES ('r-r.p.d.p.m.salt','reap-rbac','prd','default','password.md5.salt', 'reap');
INSERT INTO REAP_FACILITY.CONFIG (ID, SYSTEM_CODE, PROFILE, LABEL, NAME, VALUE) VALUES ('r-p.p.d.s.port', 'reap-portal', 'prd', 'default', 'server.port', '8081');
INSERT INTO REAP_FACILITY.CONFIG (ID, SYSTEM_CODE, PROFILE, LABEL, NAME, VALUE) VALUES ('r-p.p.d.t.key', 'reap-portal', 'prd', 'default', 'token.key', '123456');

-- 路由
INSERT INTO REAP_FACILITY.ROUTE VALUES('reap','reap','/reap/**','reap-portal',null,null); -- 统一 UI路由
INSERT INTO REAP_FACILITY.ROUTE VALUES('reap-facility','reap-facility','/apis/reap-facility/**','reap-facility',null,null);
INSERT INTO REAP_FACILITY.ROUTE VALUES('reap-facility-ui','reap-facility-ui','/ui/reap-facility/**','reap-facility',null,null);
INSERT INTO REAP_FACILITY.ROUTE VALUES('reap-rbac','reap-rbac','/apis/reap-rbac/**','reap-rbac',null,null);
INSERT INTO REAP_FACILITY.ROUTE VALUES('reap-rbac-ui','reap-rbac-ui','/ui/reap-rbac/**','reap-rbac',null,null);
INSERT INTO REAP_FACILITY.ROUTE VALUES('reap-portal', 'reap-portal' ,'/apis/reap-portal/**' ,'reap-portal' ,null ,null);
INSERT INTO REAP_FACILITY.ROUTE VALUES('reap-portal-ui', 'reap-portal-ui', '/ui/reap-portal/**' ,'reap-portal' ,null ,null);

-- 功能
INSERT INTO REAP_RBAC.FUNCTION (ID,SERVICE_ID,CODE,NAME,TYPE,ACTION) VALUES ('REAPFA0001','reap-facility','REAPFA0001','参数管理','M',null);
INSERT INTO REAP_RBAC.FUNCTION (ID,SERVICE_ID,CODE,NAME,TYPE,ACTION) VALUES ('REAPFA0002','reap-facility','REAPFA0002','路由管理','M',null);
INSERT INTO REAP_RBAC.FUNCTION (ID,SERVICE_ID,CODE,NAME,TYPE,ACTION) VALUES ('REAPFA0003','reap-facility','REAPFA0003','应用维护','M',null);
INSERT INTO REAP_RBAC.FUNCTION (ID,SERVICE_ID,CODE,NAME,TYPE,ACTION) VALUES ('REAPRB0001','reap-rbac','REAPRB0001','机构管理','M','');
INSERT INTO REAP_RBAC.FUNCTION (ID,SERVICE_ID,CODE,NAME,TYPE,ACTION) VALUES ('REAPRB0002','reap-rbac','REAPRB0002','用户管理','M','');
INSERT INTO REAP_RBAC.FUNCTION (ID,SERVICE_ID,CODE,NAME,TYPE,ACTION) VALUES ('REAPRB0003','reap-rbac','REAPRB0003','岗位管理','M','');
INSERT INTO REAP_RBAC.FUNCTION (ID,SERVICE_ID,CODE,NAME,TYPE,ACTION) VALUES ('REAPRB0004','reap-rbac','REAPRB0004','功能管理','M','');
INSERT INTO REAP_RBAC.FUNCTION (ID,SERVICE_ID,CODE,NAME,TYPE,ACTION) VALUES ('REAPRB0005','reap-rbac','REAPRB0005','业务类型管理','M','');
INSERT INTO REAP_RBAC.FUNCTION (ID,SERVICE_ID,CODE,NAME,TYPE,ACTION) VALUES ('REAPPO0001','reap-portal','REAPPO0001','菜单管理','M','');

-- 初始数据
-- 默认用户/密码： admin/888888
INSERT INTO REAP_RBAC.ORG (ID,NAME,CODE,CREATE_TIME,PARENT_ID,REMARK,LEAF) values ('0001','机构','01',null,null,null,'N');
INSERT INTO REAP_RBAC.USER (ID,USERNAME,NAME,PASSWORD,EMAIL,PHONE_NO,CREATE_TIME,GENDER,ORG_ID,REMARK) VALUES ('0001','admin','管理员','d8721f8bfb91e5c5588bec115aeaf220','admin@reap.org',18603010499, null , 'M','0001', null);
INSERT INTO REAP_RBAC.ROLE (ID,CREATE_TIME,NAME,REMARK) VALUES('0001', NULL, '系统管理岗', NULL);
INSERT INTO REAP_RBAC.USER_ROLE (USER_ID,ROLE_ID) VALUES ('0001','0001');
INSERT INTO REAP_RBAC.ROLE_FUNCTION (ROLE_ID, FUNCTION_ID) VALUES ('0001', 'REAPFA0001');
INSERT INTO REAP_RBAC.ROLE_FUNCTION (ROLE_ID, FUNCTION_ID) VALUES ('0001', 'REAPFA0002');
INSERT INTO REAP_RBAC.ROLE_FUNCTION (ROLE_ID, FUNCTION_ID) VALUES ('0001', 'REAPFA0003');
INSERT INTO REAP_RBAC.ROLE_FUNCTION (ROLE_ID, FUNCTION_ID) VALUES ('0001', 'REAPPO0001');
INSERT INTO REAP_RBAC.ROLE_FUNCTION (ROLE_ID, FUNCTION_ID) VALUES ('0001', 'REAPRB0001');
INSERT INTO REAP_RBAC.ROLE_FUNCTION (ROLE_ID, FUNCTION_ID) VALUES ('0001', 'REAPRB0002');
INSERT INTO REAP_RBAC.ROLE_FUNCTION (ROLE_ID, FUNCTION_ID) VALUES ('0001', 'REAPRB0003');
INSERT INTO REAP_RBAC.ROLE_FUNCTION (ROLE_ID, FUNCTION_ID) VALUES ('0001', 'REAPRB0004');
INSERT INTO REAP_RBAC.ROLE_FUNCTION (ROLE_ID, FUNCTION_ID) VALUES ('0001', 'REAPRB0005');
INSERT INTO REAP_PORTAL.MENU (ID, NAME, PARENT_ID, LEVEL,SEQUENCE, LEAF, FUNCTION_CODE,REMARK,CREATE_TIME) VALUES ('01'   , '系统管理', NULL, 1, 1,'N',NULL, NULL ,NULL);
INSERT INTO REAP_PORTAL.MENU (ID, NAME, PARENT_ID, LEVEL,SEQUENCE, LEAF, FUNCTION_CODE,REMARK,CREATE_TIME) VALUES ('02'   , '平台管理', NULL, 1, 2,'N',NULL, NULL ,NULL);
INSERT INTO REAP_PORTAL.MENU (ID, NAME, PARENT_ID, LEVEL,SEQUENCE, LEAF, FUNCTION_CODE,REMARK,CREATE_TIME) VALUES ('0101' , '机构管理', '01', 2, 1,'Y','REAPRB0001', NULL ,NULL);
INSERT INTO REAP_PORTAL.MENU (ID, NAME, PARENT_ID, LEVEL,SEQUENCE, LEAF, FUNCTION_CODE,REMARK,CREATE_TIME) VALUES ('0102' , '用户管理', '01', 2, 2,'Y','REAPRB0002', NULL ,NULL);
INSERT INTO REAP_PORTAL.MENU (ID, NAME, PARENT_ID, LEVEL,SEQUENCE, LEAF, FUNCTION_CODE,REMARK,CREATE_TIME) VALUES ('0103' , '功能管理', '01', 2, 3,'Y','REAPRB0004', NULL ,NULL);
INSERT INTO REAP_PORTAL.MENU (ID, NAME, PARENT_ID, LEVEL,SEQUENCE, LEAF, FUNCTION_CODE,REMARK,CREATE_TIME) VALUES ('0104' , '岗位管理', '01', 2, 4,'Y','REAPRB0003', NULL ,NULL);
INSERT INTO REAP_PORTAL.MENU (ID, NAME, PARENT_ID, LEVEL,SEQUENCE, LEAF, FUNCTION_CODE,REMARK,CREATE_TIME) VALUES ('0105' , '菜单管理', '01', 2, 5,'Y','REAPPO0001', NULL ,NULL);
INSERT INTO REAP_PORTAL.MENU (ID, NAME, PARENT_ID, LEVEL,SEQUENCE, LEAF, FUNCTION_CODE,REMARK,CREATE_TIME) VALUES ('0201' , '应用管理', '02', 2, 1,'Y','REAPFA0003', NULL ,NULL);
INSERT INTO REAP_PORTAL.MENU (ID, NAME, PARENT_ID, LEVEL,SEQUENCE, LEAF, FUNCTION_CODE,REMARK,CREATE_TIME) VALUES ('0202' , '参数管理', '02', 2, 2,'Y','REAPFA0001', NULL ,NULL);
INSERT INTO REAP_PORTAL.MENU (ID, NAME, PARENT_ID, LEVEL,SEQUENCE, LEAF, FUNCTION_CODE,REMARK,CREATE_TIME) VALUES ('0203' , '路由管理', '02', 2, 3,'Y','REAPFA0002', NULL ,NULL);
