<#
====================================================================
Script Name : sys_info.ps1
Description : Automates collection of core system metrics for 
              school computer laboratory desktop management.
====================================================================
#>

Clear-Host
Write-Host "==================================================" -ForegroundColor Cyan
Write-Host "    SCHOOL COMPUTER LAB - SYSTEM INFORMER v1.0    " -ForegroundColor Cyan
Write-Host "==================================================" -ForegroundColor Cyan
Write-Host ""

# 1. Computer Name & User Details
$computerName = $env:COMPUTERNAME
$currentUser  = $env:USERNAME
$currentDateTime = Get-Date -Format "yyyy-MM-dd HH:mm:ss"

Write-Host "[+] SYSTEM IDENTIFICATION" -ForegroundColor Yellow
Write-Host "  Computer Name : $computerName"
Write-Host "  Current User  : $currentUser"
Write-Host "  Date & Time   : $currentDateTime"
Write-Host ""

# 2. Operating System Information
$os = Get-CimInstance -ClassName Win32_OperatingSystem
Write-Host "[+] OPERATING SYSTEM DETAILS" -ForegroundColor Yellow
Write-Host "  OS Name       : $($os.Caption)"
Write-Host "  OS Version    : $($os.Version)"
Write-Host "  Architecture  : $($os.OSArchitecture)"
Write-Host ""

# 3. Disk Usage & Available Space
Write-Host "[+] STORAGE DIAGNOSTICS" -ForegroundColor Yellow
Get-CimInstance -ClassName Win32_LogicalDisk -Filter "DriveType=3" | ForEach-Object {
    $totalGB   = [math]::Round($_.Size / 1GB, 2)
    $freeGB    = [math]::Round($_.FreeSpace / 1GB, 2)
    $usedGB    = [math]::Round(($_.Size - $_.FreeSpace) / 1GB, 2)
    $freePercent = [math]::Round(($_.FreeSpace / $_.Size) * 100, 2)

    Write-Host "  Drive Letter  : $($_.DeviceID)"
    Write-Host "  Total Size    : $totalGB GB"
    Write-Host "  Used Space    : $usedGB GB"
    Write-Host "  Free Space    : $freeGB GB ($freePercent% free)"
    Write-Host "  ----------------------------------------------"
}

Write-Host "==================================================" -ForegroundColor Cyan
Write-Host "Execution complete. Report generated successfully." -ForegroundColor Green
Write-Host "==================================================" -ForegroundColor Cyan
