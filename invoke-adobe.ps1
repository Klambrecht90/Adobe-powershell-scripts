$ErrorActionPreference = "Stop"
$base = "C:\Packages\AcrobatSub"
 
Write-Host "=== Starting Adobe 2020 removal and Subscription install ==="
 

$uninstall = Join-Path $base "2020_uninstall.ps1"
if (Test-Path $uninstall) {
    Write-Host "Running uninstall script..."
    powershell.exe -ExecutionPolicy Bypass -File $uninstall
} else {
    Write-Host "⚠️ Uninstall script not found, skipping."
}
 

$install = Join-Path $base "install-adobesubscription.ps1"
if (Test-Path $install) {
    Write-Host "Running install script..."
    powershell.exe -ExecutionPolicy Bypass -File $install
} else {
    Write-Host "❌ Install script not found! Check path: $install"
    exit 1
}
 
Write-Host "=== Adobe deployment process completed ==="
exit 0
 
