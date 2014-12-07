#Import-Module Join-Path "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" "GenerateBinFile"
$packageName = 'kiki-re'
$url = 'https://kiki-re.googlecode.com/files/kiki-0.5.6-standalone.zip'
#$url64 = 'https://kiki-re.googlecode.com/files/kiki-0.5.6-standalone.zip'

# download and unpack a zip file
# if removing $url64, please remove from here
Install-ChocolateyZipPackage "$packageName" "$url" "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

#Create ignore files so the batch files are not automatically generated
$exeLocation = Join-Path "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" "kiki-reInstall"
$src = Join-Path $exeLocation "kiki"
#Create a batch file with a different name than the exe geing generated
Generate-BinFile "kiki" $src -useStart
