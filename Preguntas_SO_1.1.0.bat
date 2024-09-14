@echo off
:menu
cls
echo Menu
echo 1. Iniciar Cuestionario.
echo 2. Salir.

set /p opc="Ingrese la opcion que desea: "
set rep=0
set cal=0

set preguntasRespondidas=

if "%opc%" == "1" goto preguntas
if "%opc%" == "2" exit /b

echo Opcion no valida. Por favor, intente de nuevo.
pause
goto menu

:preguntas
cls
set quedan=10
set /a quedan=%quedan%-%rep%
if "%rep%" == "5" goto resultado
echo Tenemos %quedan% preguntas preparadas, de las cuales 5 podras contestar.

:generarPregunta
set /a question=%random% %%10+1
echo Pregunta generada: %question%
for %%q in (%preguntasRespondidas%) do (
    if "%%q" == "%question%" (
        echo La pregunta %question% ya fue respondida. Generando una nueva...
        goto generarPregunta
    )
)


set preguntasRespondidas=%preguntasRespondidas% %question%
pause
echo La pregunta es la numero %question%
goto dirigir

:dirigir
if "%question%" == "1" goto pregunta1
if "%question%" == "2" goto pregunta2
if "%question%" == "3" goto pregunta3
if "%question%" == "4" goto pregunta4
if "%question%" == "5" goto pregunta5
if "%question%" == "6" goto pregunta6
if "%question%" == "7" goto pregunta7
if "%question%" == "8" goto pregunta8
if "%question%" == "9" goto pregunta9
if "%question%" == "10" goto pregunta10

:pregunta1
cls
echo Bienvenido a la pregunta 1
echo Que es un sistema operativo?
echo.
echo a) Un hardware que gestiona la memoria del equipo
echo b) Un conjunto de programas que gestiona los recursos del hardware
echo c) Un programa de procesamiento de texto
echo d) Una aplicacion para crear documentos
set /p answer="Coloque la respuesta correcta: "
if "%answer%" == "b" goto bien 
goto mal

:pregunta2
cls
echo Bienvenido a la pregunta 2
echo Que es el kernel en un sistema operativo?
echo.
echo a) La interfaz grafica del sistema operativo
echo b) El nucleo encargado de la comunicacion directa con el hardware
echo c) El programa que gestiona la red del sistema
echo d) Un archivo ejecutable para aplicaciones
set /p answer="Coloque la respuesta correcta: "
if "%answer%" == "b" goto bien 
goto mal

:pregunta3
cls
echo Bienvenido a la pregunta 3
echo Cual es una funcion principal del kernel?
echo.
echo a) Ejecutar aplicaciones de usuario
echo b) Controlar los perifericos del sistema
echo c) Abrir y cerrar ventanas del sistema operativo
echo d) Gestionar los recursos de hardware como CPU y memoria 
set /p answer="Coloque la respuesta correcta: "
if "%answer%" == "d" goto bien 
goto mal

:pregunta4
cls
echo Bienvenido a la pregunta 4
echo Cual de los siguientes NO es un tipo de sistema operativo?
echo.
echo a) Sistema operativo de red
echo b) Sistema operativo de tiempo real
echo c) Sistema operativo multimedia
echo d) Sistema operativo distribuido
set /p answer="Coloque la respuesta correcta: "
if "%answer%" == "c" goto bien 
goto mal

:pregunta5
cls
echo Bienvenido a la pregunta 5
echo Para que sirve un sistema operativo en una computadora?
echo.
echo a) Facilitar la interaccion entre el hardware y los usuarios
echo b) Editar archivos de imagen
echo c) Crear bases de datos
echo d) Desarrollar paginas web
set /p answer="Coloque la respuesta correcta: "
if "%answer%" == "a" goto bien 
goto mal

:pregunta6
cls
echo Bienvenido a la pregunta 6
echo Que caracteristica define a un sistema operativo multiusuario?
echo.
echo a) Permitir que un usuario acceda a varios programas
echo b) Ejecutar multiples programas en tiempo real
echo c) Permitir que varios usuarios accedan simultaneamente al sistema
echo d) Operar sin conexion a internet
set /p answer="Coloque la respuesta correcta: "
if "%answer%" == "c" goto bien 
goto mal

:pregunta7
cls
echo Bienvenido a la pregunta 7
echo Cual es una caracteristica clave de los sistemas operativos modernos?
echo.
echo a) Compatibilidad con solo un tipo de hardware
echo b) Solo pueden ejecutar un programa a la vez
echo c) Incompatibilidad con redes
echo d) Capacidad de realizar multitarea 
set /p answer="Coloque la respuesta correcta: "
if "%answer%" == "d" goto bien
goto mal

:pregunta8
cls
echo Bienvenido a la pregunta 8
echo Que funcion cumple el sistema operativo en la gestion de archivos?
echo.
echo a) Realizar copias de seguridad automaticas
echo b) Organizar, almacenar y recuperar archivos en el disco
echo c) Crear graficos para las interfaces
echo d) Instalar aplicaciones de terceros
set /p answer="Coloque la respuesta correcta: "
if "%answer%" == "b" goto bien 
goto mal

:pregunta9
cls
echo Bienvenido a la pregunta 9
echo Cual de los siguientes es un ejemplo de un sistema operativo en modo monousuario?
echo.
echo a) Linux
echo b) Windows 10
echo c) MS-DOS
echo d) macOS
set /p answer="Coloque la respuesta correcta: "
if "%answer%" == "c" goto bien 
goto mal

:pregunta10
cls
echo Bienvenido a la pregunta 10
echo Que es el modo kernel en un sistema operativo?
echo.
echo a) Modo de operacion donde las aplicaciones del usuario tienen control total
echo b) Modo donde el nucleo tiene acceso a todo el hardware y funciones criticas
echo c) Modo de baja prioridad para aplicaciones secundarias
echo d) Modo grafico avanzado del sistema operativo
set /p answer="Coloque la respuesta correcta: "
if "%answer%" == "b" goto bien 
goto mal

:bien
cls
echo La respuesta es correcta
set /a cal=%cal%+2
set /a rep=%rep%+1
pause
goto preguntas

:mal
cls
echo La respuesta es incorrecta
set /a rep=%rep%+1
pause
goto preguntas

:resultado
cls
echo Tuviste un total de %cal% de calificacion
pause
goto menu



