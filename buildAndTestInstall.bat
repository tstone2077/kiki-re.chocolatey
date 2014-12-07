@echo off
pushd %~dp0
call nuget pack kiki-re.nuspec
call choco install kiki-re -source "%CD%"
popd
pause
