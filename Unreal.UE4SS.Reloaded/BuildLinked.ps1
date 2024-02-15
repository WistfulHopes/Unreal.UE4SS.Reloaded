# Set Working Directory
Split-Path $MyInvocation.MyCommand.Path | Push-Location
[Environment]::CurrentDirectory = $PWD

Remove-Item "$env:RELOADEDIIMODS/Unreal.UE4SS.Reloaded/*" -Force -Recurse
dotnet publish "./Unreal.UE4SS.Reloaded.csproj" -c Release -o "$env:RELOADEDIIMODS/Unreal.UE4SS.Reloaded" /p:OutputPath="./bin/Release" /p:ReloadedILLink="true"

# Restore Working Directory
Pop-Location