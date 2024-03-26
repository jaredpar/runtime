[CmdletBinding(PositionalBinding=$false)]
param([string]$version = "")


if ($version -eq "") {
  Write-Error "Need to pass -version"
  exit 1
}

$packageVersion="8.1.0.0-$version"
& .\dotnet.cmd pack src\libraries\System.Reflection.Metadata\src -c Release -p:ServicingVersion=1 -p:PackageVersion=$packageVersion
& .\dotnet.cmd pack src\libraries\System.Collections.Immutable\src -c Release -p:ServicingVersion=1 -p:PackageVersion=$packageVersion
