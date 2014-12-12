@echo off
pushd %~dp0
call nuget pack -NoPackageAnalysis kiki-re.nuspec
call choco install kiki-re -force -source "%CD%"
popd
pause
