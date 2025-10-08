# Erzeugt das virtuelle Environment mit der spezifischen Python-Version
Set-Location $PSScriptRoot
$ver = py -3.13 --version
if (-not $ver -like "Python 3.13.*") {
    Write-Output "Python 3.13 fehlt"
} else {
    py -3.13 -m venv .venv
    . .\.venv\Scripts\activate.ps1
    pip install --upgrade pip
    if (Test-Path "requirements.txt") {
        pip install -r requirements.txt
    }
}