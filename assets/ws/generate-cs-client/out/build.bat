:: Generated by: https://github.com/openapitools/openapi-generator.git
::

@echo off

SET CSCPATH=%SYSTEMROOT%\Microsoft.NET\Framework\v4.0.30319

if not exist ".\nuget.exe" powershell -Command "(new-object System.Net.WebClient).DownloadFile('https://dist.nuget.org/win-x86-commandline/latest/nuget.exe', '.\nuget.exe')"
.\nuget.exe install src\{{namespace}}\packages.config -o packages

if not exist ".\bin" mkdir bin

copy packages\Newtonsoft.Json.12.0.1\lib\net45\Newtonsoft.Json.dll bin\Newtonsoft.Json.dll
%CSCPATH%\csc  /reference:bin\Newtonsoft.Json.dll;System.ComponentModel.DataAnnotations.dll  /target:library /out:bin\template.api.wsclient.dll /recurse:src\template.api.wsclient\*.cs

