# Install the SQL Server module from Powershell Gallery.
Install-Module -Name SqlServer -RequiredVersion 22.2.0 -Force -AllowClobber

# Allow PowerShell scripts to run on the system.
Set-ExecutionPolicy RemoteSigned

# Import the SQL Server PowerShell module.
Import-Module SqlServer
