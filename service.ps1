param
(
    [Parameter(Mandatory=$true)] [string] $vulnExe
)

$ErrorActionPreference = "Stop"
#Requires -RunAsAdministrator

try
{
    if (! (Test-Path $vulnExe -PathType Leaf))
    {
        Write-Host "[-] File dows not exist"
        exit 1
    }

    Write-Host "[+] Creating a Windows Service"
    New-Service -Name "Fatih" -BinaryPathName $vulnExe | Out-Null

    Write-Host "[+] Editing ($vulnExe) permissions to make it writable by everyone"
    icacls.exe $vulnExe /grant everyone:F | Out-Null

}
catch
{
    Write-Host "[-] Error: $_"
}