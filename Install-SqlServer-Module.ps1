# Install the SQL Server module from Powershell Gallery.
Install-Module -Name SqlServer -RequiredVersion 22.2.0 -Force -AllowClobber

# Allow PowerShell scripts to run on the system.
Set-ExecutionPolicy RemoteSigned

# Import the SQL Server PowerShell module.
Import-Module SqlServer

# Change directory into the default instance of SQL Server.
cd SQLSERVER:\SQL\DESKTOP-3GIU7MF\SQLEXPRESS

# Save to a variable.
$Server = Get-Item .

# Open a connection with the Instance of SQL Server.
$ServerConnection = New-Object Microsoft.SqlServer.Management.Common.ServerConnection($Server.ConnectionContext.SqlConnectionObject)
$ServerConnection.Connect()

# Create a DacStore object.
# Prior to running this command, you must load the SqlServer Management Object (SMO) assemblies in Powershell.
# $DacStore = New-Object Microsoft.SqlServer.Management.Dac.DacStore($ServerConnection)
New-Object Microsoft.SqlServer.Management.Dac.DacStore($ServerConnection)
