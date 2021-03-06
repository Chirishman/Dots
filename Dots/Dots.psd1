#
# Module manifest for module 'Dots'
#
# Generated by: Warren Frame
#
# Generated on: 1/18/18
#

@{

# Script module or binary module file associated with this manifest.
RootModule = 'Dots.psm1'

# Version number of this module.
ModuleVersion = '0.0.2'

# Supported PSEditions
# CompatiblePSEditions = @()

# ID used to uniquely identify this module
GUID = '65f1a6c3-c1cc-4a36-8354-f971a07adf52'

# Author of this module
Author = 'Warren Frame'

# Company or vendor of this module
# CompanyName = 'Unknown'

# Copyright statement for this module
Copyright = '(c) 2018 Warren Frame. All rights reserved.'

# Description of the functionality provided by this module
Description = 'PowerShell and Neo4j Based CMDB-lite'

# Minimum version of the PowerShell engine required by this module
PowerShellVersion = '5.0'

# Name of the PowerShell host required by this module
# PowerShellHostName = ''

# Minimum version of Microsoft .NET Framework required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
# DotNetFrameworkVersion = ''

# Processor architecture (None, X86, Amd64) required by this module
# ProcessorArchitecture = ''

# Modules that must be imported into the global environment prior to importing this module
RequiredModules = @(
    @{ModuleName="PSNeo4j"; ModuleVersion="0.0.26"},
    @{ModuleName="powershell-yaml"; ModuleVersion="0.3.3"}
)

# Format files (.ps1xml) to be loaded when importing this module
# FormatsToProcess = @()

# Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
FunctionsToExport = @('Connect-TheDots','Get-DotsConfig','Get-DotsConfigPath','Get-DotsScript','Initialize-DotsConfig','Set-DotsConfig')

# Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
CmdletsToExport = @()

# Variables to export from this module
VariablesToExport = '*'

# Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
AliasesToExport = @()

# Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
PrivateData = @{

    PSData = @{

        # Tags applied to this module. These help with module discovery in online galleries.
        Tags = @('Inventory', 'Database', 'CMDB', 'Systems', 'Neo4j')

        # A URL to the license for this module.
        LicenseUri = 'https://github.com/RamblingCookieMonster/Dots/blob/master/LICENSE'

        # A URL to the main website for this project.
        ProjectUri = 'https://github.com/RamblingCookieMonster/Dots'

        # A URL to an icon representing this module.
        # IconUri = ''

        # ReleaseNotes of this module
        ReleaseNotes = 'Initial get-it-working-for-a-demo-ish release.  Beware!'

    } # End of PSData hashtable

} # End of PrivateData hashtable

# HelpInfo URI of this module
# HelpInfoURI = ''

# Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
# DefaultCommandPrefix = ''
}

