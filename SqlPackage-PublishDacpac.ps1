$DacpacFile="C:\Users\scott\dev-work\TestDatabase\bin\Release\TestDatabase-1.0.0.2.dacpac"
$ConnectionString="Server=DESKTOP-3GIU7MF\SQLEXPRESS;initial catalog=TestDatabase;trusted_connection=true;TrustServerCertificate=True"
& 'C:\Program Files\Microsoft SQL Server\160\DAC\bin\SqlPackage.exe' /Action:Publish /SourceFile:$DacpacFile /TargetConnectionString:$ConnectionString /SourceTrustServerCertificate:True