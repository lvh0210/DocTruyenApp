@rem Forwarding to installed Gradle 8.5 with OpenJDK 17
@echo off
set "JAVA_HOME=D:\VibeCode\Tools\jdk-17"
set "PATH=%JAVA_HOME%\bin;%PATH%"
"D:\VibeCode\Tools\gradle\bin\gradle.bat" %*