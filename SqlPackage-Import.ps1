$SourceFile="C:\Users\scott\dev-work\DatabaseBackups\TestDatabase\20241227-181513\TestDatabase.bacpac"
$ConnectionString="Server=DESKTOP-3GIU7MF\SQLEXPRESS;initial catalog=TestDatabase;trusted_connection=true;TrustServerCertificate=True"
& 'C:\Program Files\Microsoft SQL Server\160\DAC\bin\SqlPackage.exe' /Action:Import /SourceFile:$SourceFile /TargetConnectionString:$ConnectionString