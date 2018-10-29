@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  restfulapp startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Add default JVM options here. You can also use JAVA_OPTS and RESTFULAPP_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS="-Djava.util.logging.manager=org.apache.logging.log4j.jul.LogManager"

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
@rem Get command-line arguments, handling Windows variants

if not "%OS%" == "Windows_NT" goto win9xME_args

:win9xME_args
@rem Slurp the command line arguments.
set CMD_LINE_ARGS=
set _SKIP=2

:win9xME_args_slurp
if "x%~1" == "x" goto execute

set CMD_LINE_ARGS=%*

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\metrics-jvm-3.1.5.jar;%APP_HOME%\lib\javax.servlet-api-3.1.0.jar;%APP_HOME%\lib\client-java-api-0.1.jar;%APP_HOME%\lib\jackson-datatype-guava-2.8.11.jar;%APP_HOME%\lib\joda-time-2.9.9.jar;%APP_HOME%\lib\kafka-clients-0.11.0.0.jar;%APP_HOME%\lib\okhttp-3.3.0.jar;%APP_HOME%\lib\spring-boot-actuator-1.5.12.RELEASE.jar;%APP_HOME%\lib\dropwizard-validation-1.0.0.jar;%APP_HOME%\lib\spring-expression-4.3.16.RELEASE.jar;%APP_HOME%\lib\jetty-util-9.4.9.v20180320.jar;%APP_HOME%\lib\jackson-datatype-joda-2.8.11.jar;%APP_HOME%\lib\okhttp-2.7.5.jar;%APP_HOME%\lib\jetty-io-9.4.9.v20180320.jar;%APP_HOME%\lib\metrics-spring-3.1.3.jar;%APP_HOME%\lib\spring-core-4.3.16.RELEASE.jar;%APP_HOME%\lib\converter-jackson-2.0.2.jar;%APP_HOME%\lib\jul-to-slf4j-1.7.25.jar;%APP_HOME%\lib\snakeyaml-1.17.jar;%APP_HOME%\lib\spring-boot-starter-tomcat-1.5.12.RELEASE.jar;%APP_HOME%\lib\logging-interceptor-2.7.5.jar;%APP_HOME%\lib\junit-4.12.jar;%APP_HOME%\lib\gson-2.8.2.jar;%APP_HOME%\lib\spring-beans-4.3.16.RELEASE.jar;%APP_HOME%\lib\jetty-server-9.4.9.v20180320.jar;%APP_HOME%\lib\platform-connector-core-1.0.11.jar;%APP_HOME%\lib\jackson-datatype-jdk8-2.8.11.jar;%APP_HOME%\lib\cglib-nodep-3.2.5.jar;%APP_HOME%\lib\log4j-over-slf4j-1.7.25.jar;%APP_HOME%\lib\spring-boot-starter-logging-1.5.12.RELEASE.jar;%APP_HOME%\lib\slf4j-api-1.7.25.jar;%APP_HOME%\lib\client-java-util-0.1.jar;%APP_HOME%\lib\j2objc-annotations-1.1.jar;%APP_HOME%\lib\spring-boot-1.5.12.RELEASE.jar;%APP_HOME%\lib\metrics-annotation-3.1.5.jar;%APP_HOME%\lib\jackson-module-afterburner-2.8.11.jar;%APP_HOME%\lib\jackson-core-2.8.11.jar;%APP_HOME%\lib\spring-context-4.3.16.RELEASE.jar;%APP_HOME%\lib\spring-boot-autoconfigure-1.5.12.RELEASE.jar;%APP_HOME%\lib\commons-lang3-3.4.jar;%APP_HOME%\lib\tomcat-annotations-api-8.5.29.jar;%APP_HOME%\lib\log4j-core-2.9.1.jar;%APP_HOME%\lib\commons-codec-1.10.jar;%APP_HOME%\lib\jboss-logging-3.3.2.Final.jar;%APP_HOME%\lib\frigga-0.18.0.jar;%APP_HOME%\lib\validation-api-1.1.0.Final.jar;%APP_HOME%\lib\tomcat-embed-websocket-8.5.29.jar;%APP_HOME%\lib\consul-client-0.16.3.jar;%APP_HOME%\lib\spring-boot-starter-web-1.5.12.RELEASE.jar;%APP_HOME%\lib\okhttp-ws-2.7.5.jar;%APP_HOME%\lib\jcl-over-slf4j-1.7.25.jar;%APP_HOME%\lib\retrofit-2.1.0.jar;%APP_HOME%\lib\metrics-healthchecks-3.1.5.jar;%APP_HOME%\lib\hibernate-validator-5.3.6.Final.jar;%APP_HOME%\lib\spring-web-4.3.16.RELEASE.jar;%APP_HOME%\lib\classmate-1.3.4.jar;%APP_HOME%\lib\hamcrest-core-1.3.jar;%APP_HOME%\lib\jackson-dataformat-yaml-2.8.11.jar;%APP_HOME%\lib\log4j-1.2.17.jar;%APP_HOME%\lib\spring-webmvc-4.3.16.RELEASE.jar;%APP_HOME%\lib\jsr305-3.0.1.jar;%APP_HOME%\lib\swagger-annotations-1.5.12.jar;%APP_HOME%\lib\dropwizard-metrics-influxdb-1.2.2.jar;%APP_HOME%\lib\error_prone_annotations-2.0.18.jar;%APP_HOME%\lib\dropwizard-jackson-1.0.0.jar;%APP_HOME%\lib\spring-boot-starter-1.5.12.RELEASE.jar;%APP_HOME%\lib\snappy-java-1.1.2.6.jar;%APP_HOME%\lib\lz4-1.3.0.jar;%APP_HOME%\lib\metrics-core-3.1.5.jar;%APP_HOME%\lib\jackson-databind-2.8.11.1.jar;%APP_HOME%\lib\javax.el-3.0.0.jar;%APP_HOME%\lib\log4j-slf4j-impl-2.9.1.jar;%APP_HOME%\lib\spring-boot-starter-actuator-1.5.12.RELEASE.jar;%APP_HOME%\lib\dropwizard-util-1.0.0.jar;%APP_HOME%\lib\tomcat-embed-core-8.5.29.jar;%APP_HOME%\lib\restfulapp-0.0.1.jar;%APP_HOME%\lib\jackson-datatype-jsr310-2.8.11.jar;%APP_HOME%\lib\jackson-annotations-2.8.0.jar;%APP_HOME%\lib\log4j-api-2.9.1.jar;%APP_HOME%\lib\okio-1.8.0.jar;%APP_HOME%\lib\log4j-jul-2.9.1.jar;%APP_HOME%\lib\disruptor-3.3.7.jar;%APP_HOME%\lib\jetty-http-9.4.9.v20180320.jar;%APP_HOME%\lib\trigga-1.1.2.jar;%APP_HOME%\lib\animal-sniffer-annotations-1.14.jar;%APP_HOME%\lib\metrics-influxdb-1.2.2.jar;%APP_HOME%\lib\vault-java-driver-3.0.0.jar;%APP_HOME%\lib\spring-aop-4.3.16.RELEASE.jar;%APP_HOME%\lib\dropwizard-metrics-1.0.0.jar;%APP_HOME%\lib\tomcat-embed-el-8.5.29.jar;%APP_HOME%\lib\platform-connector-spring-boot-1.0.11.jar;%APP_HOME%\lib\dropwizard-lifecycle-1.0.0.jar;%APP_HOME%\lib\guava-22.0.jar;%APP_HOME%\lib\commons-lang-2.6.jar;%APP_HOME%\lib\system-rules-1.16.1.jar

@rem Execute restfulapp
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %RESTFULAPP_OPTS%  -classpath "%CLASSPATH%" com.target.restfulapp.Main %CMD_LINE_ARGS%

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable RESTFULAPP_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%RESTFULAPP_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
