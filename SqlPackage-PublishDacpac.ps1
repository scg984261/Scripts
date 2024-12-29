$DacpacFile="C:\Users\scott\dev-work\CDB\bin\Debug\CDB.dacpac"
$ConnectionString="Server=DESKTOP-3GIU7MF\SQLEXPRESS;initial catalog=CDB;trusted_connection=true;TrustServerCertificate=True"
& 'C:\Program Files\Microsoft SQL Server\160\DAC\bin\SqlPackage.exe' /Action:Publish /SourceFile:$DacpacFile /TargetConnectionString:$ConnectionString /SourceTrustServerCertificate:True