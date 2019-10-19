@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  JLoggerApp startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Add default JVM options here. You can also use JAVA_OPTS and J_LOGGER_APP_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

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

set CLASSPATH=%APP_HOME%\lib\JLoggerApp.jar;%APP_HOME%\lib\charm-5.0.2.jar;%APP_HOME%\lib\afterburner.mfx-1.6.3.jar;%APP_HOME%\lib\lombok-1.18.8.jar;%APP_HOME%\lib\gson-2.8.5.jar;%APP_HOME%\lib\httpclient-4.5.8.jar;%APP_HOME%\lib\charm-glisten-connect-view-5.0.2.jar;%APP_HOME%\lib\charm-glisten-5.0.2.jar;%APP_HOME%\lib\charm-down-plugin-display-3.8.6.jar;%APP_HOME%\lib\charm-down-plugin-lifecycle-3.8.6.jar;%APP_HOME%\lib\charm-down-plugin-statusbar-3.8.6.jar;%APP_HOME%\lib\charm-cloudlink-client-4.5.2.jar;%APP_HOME%\lib\charm-down-plugin-storage-3.8.6.jar;%APP_HOME%\lib\connect-1.5.0.jar;%APP_HOME%\lib\charm-down-plugin-device-3.8.0.jar;%APP_HOME%\lib\charm-down-plugin-in-app-billing-3.8.0.jar;%APP_HOME%\lib\charm-down-plugin-push-notifications-3.8.0.jar;%APP_HOME%\lib\charm-down-plugin-runtime-args-3.8.0.jar;%APP_HOME%\lib\charm-down-core-3.8.6.jar;%APP_HOME%\lib\javax.json-1.0.4.jar

@rem Execute JLoggerApp
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %J_LOGGER_APP_OPTS%  -classpath "%CLASSPATH%" se.danielmartensson.jlogger.Main %CMD_LINE_ARGS%

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable J_LOGGER_APP_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%J_LOGGER_APP_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
