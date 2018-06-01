@echo off

:: ----------------------
:: KUDU Deployment Script
:: ----------------------


echo Running: "%WEBROOT_PATH%\App_Data\tools\configtransform\SlowCheetah.Xdt.exe" "%WEBROOT_PATH%\web.config" "%WEBROOT_PATH%\web.azure.config" "%WEBROOT_PATH%\web.config"

"%WEBROOT_PATH%\App_Data\tools\configtransform\SlowCheetah.Xdt.exe" "%WEBROOT_PATH%\web.config" "%WEBROOT_PATH%\web.azure.config" "%WEBROOT_PATH%\web.config"
IF %ERRORLEVEL% NEQ 0 goto error

goto end

:error
echo An error has occured during web site deployment.
exit /b 1

:end
echo Finished successfully.

