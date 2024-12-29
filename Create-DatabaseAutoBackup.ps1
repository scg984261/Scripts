# Creates a Task in Task Scheduler to automatically take a backup of an SQL Server Database.
$Action = New-ScheduledTaskAction -Execute "PowerShell.exe" -Argument "C:\Users\scott\dev-work\Scripts\Export-Database.ps1";
$Trigger = New-ScheduledTaskTrigger -AtLogon;
$Settings = New-ScheduledTaskSettingsSet;
$Task = New-ScheduledTask -Action $Action -Trigger $Trigger -Settings $Settings;
Register-ScheduledTask -TaskName "DatabaseBackup" -InputObject $Task;
