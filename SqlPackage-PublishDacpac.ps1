$DatabaseName = "CDB";
Write-Host "Database name is ${DatabaseName}";

$DacpacFile="C:\Users\scott\dev-work\CDB\bin\Debug\${DatabaseName}.dacpac";
Write-Host "DACPAC file is ${DacpacFile}";

if (Test-Path $DacpacFile) {
	Write-Host "File found locally: ${DacpacFile}";
} else {
	Write-Host "DACPAC file ${DacpacFile} not found. Exiting script.";
	exit 1;
}

$MachineName=$env:COMPUTERNAME
Write-Host "Machine name is ${MachineName}";
$ServerInstanceName="${MachineName}\SQLEXPRESS"
Write-Host "SQL Server instance name is ${ServerInstanceName}";

$ConnectionString="Server=${ServerInstanceName};initial catalog=${DatabaseName};trusted_connection=true;TrustServerCertificate=True";
Write-Host "Connection string is ${ConnectionString}";

& 'C:\Program Files\Microsoft SQL Server\160\DAC\bin\SqlPackage.exe' /Action:Publish /SourceFile:$DacpacFile /TargetConnectionString:$ConnectionString /SourceTrustServerCertificate:True /p:BlockOnPossibleDataLoss=false