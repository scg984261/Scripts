$DatabaseName = "CDB";
Write-Host "Database name is ${DatabaseName}";

$DacpacFile="C:\Users\scott\dev-work\CDB\bin\Debug\${DatabaseName}.dacpac";
Write-Host "DACPAC file is ${DacpacFile}";

$ConnectionString="Server=DESKTOP-3GIU7MF\SQLEXPRESS;initial catalog=${DatabaseName};trusted_connection=true;TrustServerCertificate=True";
Write-Host "Connection string is ${ConnectionString}";

& 'C:\Program Files\Microsoft SQL Server\160\DAC\bin\SqlPackage.exe' /Action:Publish /SourceFile:$DacpacFile /TargetConnectionString:$ConnectionString /SourceTrustServerCertificate:True