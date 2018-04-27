# curl|bash chocolatey and install from public repo
# not really appropriate for a production environment!

# Bootstrap chocolatey, install neo4j with defaults
if ($(try{[void](choco);$false}catch{$true})){
	Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
}
choco install neo4j-community -y

# Get PSNeo4j
Install-Module PSNeo4j -Force
Install-Module StoredPSCredential -Force
Import-Module PSNeo4j -Force
Import-Module StoredPSCredential -Force

# Set initial password and psneo4j config
$CredentialName = 'DBAdmin'

if ((Read-StoredCredentialList) -notcontains $CredentialName){
	Initialize-StoredCredential -CredName $CredentialName
}
$Credential = Get-StoredCredential -CredName $CredentialName

Set-Neo4jPassword -Password $Credential.Password
Set-PSNeo4jConfiguration  -Credential $Credential

# Connecting from a remote host?
# Uncomment dbms.connectors.default_listen_address=0.0.0.0
# In "C:\tools\neo4j-community\neo4j-community-3.2.3\conf\neo4j.conf" - note version number may change

Get-Neo4jUser
Get-Neo4jActiveConfig | Format-List