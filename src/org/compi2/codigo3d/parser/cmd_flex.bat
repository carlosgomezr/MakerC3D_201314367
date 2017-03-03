SET JAVA_HOME="C:\Program Files\Java\jdk1.8.0_31\bin"
SET PATH=%JAVA_HOME%;%PATH%
SET CLASSPATH=%JAVA_HOME%;
SET JFLEX_HOME= C:\Fuentes\jflex-1.6.0
cd C:\Users\estua_000\Documents\GitHub\MakerC3D\src\org\compi2\codigo3d
java -jar %JFLEX_HOME%\lib\JFlex.jar lexico.flex
pause
