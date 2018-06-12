@echo off
set /p app=Input AppId:

for %%i in (../apps/%app%/%app%*.jar) do set "jarProg=%%~i"
"%JAVA_HOME%\jre\bin\java" -Dloader.path=../apps/%app%/libs,../libs  -jar  ../apps/%app%/%jarProg%