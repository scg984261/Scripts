# Change directory into the default instance of SQL Server.
cd SQLSERVER:\SQL\DESKTOP-3GIU7MF\SQLEXPRESS

# Save to a variable.
$Server = Get-Item .

# Open a connection with the Instance of SQL Server.
$ServerConnection = New-Object Microsoft.SqlServer.Management.Common.ServerConnection($Server.ConnectionContext.SqlConnectionObject)
$ServerConnection.Connect()

# Create a DacStore object.
# Prior to running this command, you must load the SqlServer Management Object (SMO) assemblies in Powershell.
# This command is currently giving me an error - Cannot find type [Microsoft.SqlServer.Management.Dac.DacStore] - currently trying to resolve.
$DacStore = New-Object Microsoft.SqlServer.Management.Dac.DacStore($ServerConnection)
