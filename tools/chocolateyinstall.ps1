$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://download.expressvpn.xyz/clients/windows/expressvpn_6.8.5.5936.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  softwareName  = 'ExpressVPN*'
  checksum      = '77b1f7e25bd961cbcad410aaf25ff9d4'
  checksumType  = 'md5'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs