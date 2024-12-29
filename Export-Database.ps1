$ConnectionString="Server=DESKTOP-3GIU7MF\SQLEXPRESS;initial catalog=TestDatabase;trusted_connection=true;TrustServerCertificate=True"
Write-Host "Connection String is ${ConnectionString}";

$CurrentDate = Get-Date -Format 'yyyyMMdd-HHmmss';
Write-Host "Current date and time is ${CurrentDate}";

$BackupDirectory = "C:\Users\scott\dev-work\DatabaseBackups\TestDatabase";
Write-Host "Backup directory is ${BackupDirectory}";

New-Item -Path $BackupDirectory -Name $CurrentDate -ItemType "Directory"

$BackupFile = "${BackupDirectory}\${CurrentDate}\TestDatabase.bacpac";

& 'C:\Program Files\Microsoft SQL Server\160\DAC\bin\SqlPackage.exe' /Action:Export /TargetFile:$BackupFile /SourceConnectionString:$ConnectionString
