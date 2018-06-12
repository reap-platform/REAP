@echo off
call %~dp0\env.bat
"%JAVA_HOME%\jre\bin\java" -cp %REAP_HOME%/libs/*  org.h2.tools.Server