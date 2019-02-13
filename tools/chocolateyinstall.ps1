$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://download.expressvpn.xyz/clients/windows/expressvpn_6.8.6.6583.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  softwareName  = 'ExpressVPN*'
  checksum      = '72bfa1bb1395425b1f45a5be8b2850d1'
  checksumType  = 'md5'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs