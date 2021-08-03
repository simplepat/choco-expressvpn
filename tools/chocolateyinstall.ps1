$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://www.expressvpn.works/clients/windows/expressvpn_windows_10.4.1.2_release.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  softwareName  = 'ExpressVPN*'
  checksum      = 'E0659494C5B27F2BEF8C91EED5B8D34E'
  checksumType  = 'md5'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs