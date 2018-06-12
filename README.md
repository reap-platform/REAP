<p align="center">
  <a href="https://catframework.cn/reap/">
    <img width="230" src="./docs/images/logo.png">
  </a>
</p>

# REAP

> **The right stack for building modern distributed enterprise web applications.** :sparkles:

*REAP* (Reactive Enterprise Application Platform ) 是一个开箱即用的企业级分布式应用开发平台。

- [功能演示](https://catframework.cn/reap/)

## 平台特性

- Full-stack Platform，前后端开发一体化、无缝整合
- Unified UI Portal，统一 UI 入口提升用户体验  
- Central Management，整合功能集中对平台进行管理（参数、路由、监控）

## 运行环境

- JDK 1.8+

## 平台安装

```bash
git clone https://github.com/reap-platform/REAP.git
cd REAP
## start database  
bin/start-db.bat
## init database 
bin/init-db.bat
## start reap-facility
bin/start.bat reap-facility
## start reap-rbac
bin/start.bat reap-rbac
## start reap-portal 
bin/start.bat reap-portal 
```

访问 `http://localhost:8761/reap/` 默认用户名密码： `amdin/888888`

## 平台模块


| 子系统  | 介绍 |
| ------------- | ------------- |
| [reap-facility](https://github.com/reap-platform/reap-facility)  | 平台基础设施包含路由、参数、服务注册，提供功能整合在 ouip-portal 中进行可视化的维护管理  |
| [reap-portal](https://github.com/reap-platform/reap-portal)  | 平台统一UI门户，所有其他应用的UI整合在 Portal 中  |
| [reap-rbac](https://github.com/reap-platform/reap-rbac)  | 内置提供了 Role Based Access Control 对用户、机构、岗位、功能进行维护，部署中可替换  | 
