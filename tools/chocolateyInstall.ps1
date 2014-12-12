Import-Module Join-Path "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" "GenerateBinFile"
$packageName = 'kiki-re'
$url = 'https://kiki-re.googlecode.com/files/kiki-0.5.6-standalone.zip'

# download and unpack a zip file
Install-ChocolateyZipPackage "$packageName" "$url" "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
