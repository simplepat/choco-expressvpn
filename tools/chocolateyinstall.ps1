$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://download.expressvpn.xyz/clients/windows/expressvpn_7.8.7.7.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  softwareName  = 'ExpressVPN*'
  checksum      = 'd3de509135c6a87ed61a3b43bb260e33'
  checksumType  = 'md5'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs