SET JAVA_HOME="C:\Program Files\Java\jdk1.8.0_31\bin"
SET PATH=%JAVA_HOME%;%PATH%
SET CLASSPATH=%JAVA_HOME%;
cd C:\Users\estua_000\Documents\GitHub\MakerC3D\src\org\compi2\codigo3d\parser
java -jar C:\Fuentes\java-cup-11b.jar -parser parser -symbols sym sintactico.cup
pause