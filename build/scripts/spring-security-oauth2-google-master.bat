@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  spring-security-oauth2-google-master startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

@rem Add default JVM options here. You can also use JAVA_OPTS and SPRING_SECURITY_OAUTH_GOOGLE_MASTER_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto init

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto init

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:init
@rem Get command-line arguments, handling Windowz variants

if not "%OS%" == "Windows_NT" goto win9xME_args
if "%@eval[2+2]" == "4" goto 4NT_args

:win9xME_args
@rem Slurp the command line arguments.
set CMD_LINE_ARGS=
set _SKIP=2

:win9xME_args_slurp
if "x%~1" == "x" goto execute

set CMD_LINE_ARGS=%*
goto execute

:4NT_args
@rem Get arguments from the 4NT Shell from JP Software
set CMD_LINE_ARGS=%$

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\spring-security-oauth2-google-master-1.0.jar;%APP_HOME%\lib\spring-boot-autoconfigure-1.1.5.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-web-1.1.5.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-jetty-1.1.5.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-actuator-1.1.5.RELEASE.jar;%APP_HOME%\lib\spring-data-cassandra-1.0.4.RELEASE.jar;%APP_HOME%\lib\javax.servlet.jsp.jstl-api-1.2.1.jar;%APP_HOME%\lib\taglibs-standard-jstlel-1.2.1.jar;%APP_HOME%\lib\spring-security-web-3.2.5.RELEASE.jar;%APP_HOME%\lib\spring-security-config-3.2.5.RELEASE.jar;%APP_HOME%\lib\spring-security-oauth2-2.0.3.RELEASE.jar;%APP_HOME%\lib\slf4j-api-1.7.12.jar;%APP_HOME%\lib\logback-classic-1.1.3.jar;%APP_HOME%\lib\joda-time-2.1.jar;%APP_HOME%\lib\spring-boot-1.1.5.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-1.1.5.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-tomcat-1.1.5.RELEASE.jar;%APP_HOME%\lib\jackson-databind-2.3.3.jar;%APP_HOME%\lib\hibernate-validator-5.0.3.Final.jar;%APP_HOME%\lib\spring-core-4.0.6.RELEASE.jar;%APP_HOME%\lib\spring-web-4.0.6.RELEASE.jar;%APP_HOME%\lib\spring-webmvc-4.0.6.RELEASE.jar;%APP_HOME%\lib\jetty-webapp-8.1.15.v20140411.jar;%APP_HOME%\lib\jetty-jsp-8.1.15.v20140411.jar;%APP_HOME%\lib\spring-boot-actuator-1.1.5.RELEASE.jar;%APP_HOME%\lib\spring-cql-1.0.4.RELEASE.jar;%APP_HOME%\lib\spring-data-commons-1.8.4.RELEASE.jar;%APP_HOME%\lib\cassandra-driver-dse-2.0.2.jar;%APP_HOME%\lib\jcl-over-slf4j-1.7.7.jar;%APP_HOME%\lib\taglibs-standard-spec-1.2.1.jar;%APP_HOME%\lib\taglibs-standard-impl-1.2.1.jar;%APP_HOME%\lib\aopalliance-1.0.jar;%APP_HOME%\lib\spring-security-core-3.2.5.RELEASE.jar;%APP_HOME%\lib\commons-codec-1.6.jar;%APP_HOME%\lib\jackson-mapper-asl-1.9.13.jar;%APP_HOME%\lib\logback-core-1.1.3.jar;%APP_HOME%\lib\snakeyaml-1.13.jar;%APP_HOME%\lib\tomcat-embed-core-7.0.54.jar;%APP_HOME%\lib\tomcat-embed-el-7.0.54.jar;%APP_HOME%\lib\tomcat-embed-logging-juli-7.0.54.jar;%APP_HOME%\lib\jackson-annotations-2.3.0.jar;%APP_HOME%\lib\jackson-core-2.3.3.jar;%APP_HOME%\lib\validation-api-1.1.0.Final.jar;%APP_HOME%\lib\jboss-logging-3.1.1.GA.jar;%APP_HOME%\lib\classmate-1.0.0.jar;%APP_HOME%\lib\jetty-xml-8.1.15.v20140411.jar;%APP_HOME%\lib\jetty-servlet-8.1.15.v20140411.jar;%APP_HOME%\lib\javax.servlet.jsp-2.2.0.v201112011158.jar;%APP_HOME%\lib\org.apache.jasper.glassfish-2.2.2.v201112011158.jar;%APP_HOME%\lib\javax.servlet.jsp.jstl-1.2.0.v201105211821.jar;%APP_HOME%\lib\org.apache.taglibs.standard.glassfish-1.2.0.v201112081803.jar;%APP_HOME%\lib\javax.el-2.2.0.v201108011116.jar;%APP_HOME%\lib\com.sun.el-2.2.0.v201108011116.jar;%APP_HOME%\lib\org.eclipse.jdt.core-3.7.1.jar;%APP_HOME%\lib\spring-tx-3.2.10.RELEASE.jar;%APP_HOME%\lib\cassandra-all-2.0.6.jar;%APP_HOME%\lib\guava-15.0.jar;%APP_HOME%\lib\liquibase-core-3.1.1.jar;%APP_HOME%\lib\cassandra-driver-core-2.0.2.jar;%APP_HOME%\lib\jackson-core-asl-1.9.13.jar;%APP_HOME%\lib\jetty-util-8.1.15.v20140411.jar;%APP_HOME%\lib\jetty-security-8.1.15.v20140411.jar;%APP_HOME%\lib\snappy-java-1.0.5.jar;%APP_HOME%\lib\lz4-1.2.0.jar;%APP_HOME%\lib\compress-lzf-0.8.4.jar;%APP_HOME%\lib\commons-cli-1.1.jar;%APP_HOME%\lib\commons-lang3-3.1.jar;%APP_HOME%\lib\concurrentlinkedhashmap-lru-1.3.jar;%APP_HOME%\lib\antlr-3.2.jar;%APP_HOME%\lib\jline-1.0.jar;%APP_HOME%\lib\json-simple-1.1.jar;%APP_HOME%\lib\high-scale-lib-1.1.2.jar;%APP_HOME%\lib\snaptree-0.1.jar;%APP_HOME%\lib\jbcrypt-0.3m.jar;%APP_HOME%\lib\metrics-core-2.2.0.jar;%APP_HOME%\lib\reporter-config-2.1.0.jar;%APP_HOME%\lib\thrift-server-0.3.3.jar;%APP_HOME%\lib\super-csv-2.1.0.jar;%APP_HOME%\lib\libthrift-0.9.1.jar;%APP_HOME%\lib\cassandra-thrift-2.0.6.jar;%APP_HOME%\lib\jamm-0.2.5.jar;%APP_HOME%\lib\metrics-core-3.0.2.jar;%APP_HOME%\lib\jetty-server-8.1.15.v20140411.jar;%APP_HOME%\lib\antlr-runtime-3.2.jar;%APP_HOME%\lib\disruptor-3.0.1.jar;%APP_HOME%\lib\httpclient-4.2.5.jar;%APP_HOME%\lib\httpcore-4.2.4.jar;%APP_HOME%\lib\javax.servlet-3.0.0.v201112011016.jar;%APP_HOME%\lib\jetty-continuation-8.1.15.v20140411.jar;%APP_HOME%\lib\jetty-http-8.1.15.v20140411.jar;%APP_HOME%\lib\stringtemplate-3.2.jar;%APP_HOME%\lib\jetty-io-8.1.15.v20140411.jar;%APP_HOME%\lib\antlr-2.7.7.jar;%APP_HOME%\lib\spring-beans-4.0.6.RELEASE.jar;%APP_HOME%\lib\spring-context-4.0.6.RELEASE.jar;%APP_HOME%\lib\netty-3.9.0.Final.jar;%APP_HOME%\lib\commons-logging-1.1.3.jar;%APP_HOME%\lib\spring-aop-4.0.6.RELEASE.jar;%APP_HOME%\lib\spring-expression-4.0.6.RELEASE.jar

@rem Execute spring-security-oauth2-google-master
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %SPRING_SECURITY_OAUTH_GOOGLE_MASTER_OPTS%  -classpath "%CLASSPATH%" com.rst.oauth2.google.config.SpringBootRestApplication %CMD_LINE_ARGS%

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable SPRING_SECURITY_OAUTH_GOOGLE_MASTER_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%SPRING_SECURITY_OAUTH_GOOGLE_MASTER_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
