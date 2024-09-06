@echo off
:menu
cls
echo Menu
echo 1. Convertir decimal a binario.
echo 2. Convertir binario a decimal.
echo 3. Operaciones con binarios.
echo 4. Salir.

set /p opc="Ingrese la opcion que desea: "

if "%opc%" == "1" goto Dec_Bin
if "%opc%" == "2" goto Bin_Dec
if "%opc%" == "3" goto Op_Bin
if "%opc%" == "4" exit /b

echo opcion no valida. Por favor, intente de nuevo.
pause
goto menu


:Dec_Bin
cls
echo Convertir de Decimal a Binario 
set /p dec="Ingrese el numero decimal que desea convertir: "

Set boton=0

echo 1.Regresar al menu. 
echo 2.Ingresar nuevo decimal.
echo 3.Salir.

Set/p boton="Que desea hacer: "

if "%boton%" == "1" goto menu
if "%boton%" == "2" goto Dec_Bin
if "%boton%" == "3" exit/b

echo Opcion no valida. Se le enviara a menu.
pause
goto menu

:Bin_Dec
cls
echo Convertir de Binario a Decimal
set /p dec="Ingrese el numero binario que desea convertir: "

Set boton=0

echo 1.Regresar al menu. 
echo 2.Ingresar nuevo decimal.
echo 3.Salir.

Set/p boton="Que desea hacer: "

if "%boton%" == "1" goto menu
if "%boton%" == "2" goto Bin_Dec
if "%boton%" == "3" exit/b

echo Opcion no valida. Se le enviara a menu.
pause
goto menu

:Op_Bin
cls
echo Operaciones con binarios
set /p dec="Ingrese el numero decimal que desea convertir: "

Set boton=0

echo 1.Regresar al menu. 
echo 2.Ingresar nueva operacion.
echo 3.Salir.

Set/p boton="Que desea hacer: "

if "%boton%" == "1" goto menu
if "%boton%" == "2" goto Op_Bin
if "%boton%" == "3" exit/b

echo Opcion no valida. Se le enviara a menu.
pause
goto menu