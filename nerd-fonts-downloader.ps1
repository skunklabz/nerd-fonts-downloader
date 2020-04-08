try {
    Write-Host "Downloading latest Nerd Fonts..."
    $TempDir = "C:\temp"
    $ArchivePath = "$TempDir\fonts-master.zip"
    $ScriptPath = "$TempDir\fonts-master\install.ps1"
    $DownloadPath = "https://github.com/powerline/fonts/archive/master.zip"
    If(!(Test-Path $TempDir)){ Write-Host "Creating temporary dir $TempDir"; New-Item -Path $TempDir -ItemType d }
    Invoke-WebRequest -Uri $DownloadPath -OutFile $ArchivePath
    Write-Host "Expanding archive $ArchivePath..."
    Expand-Archive -Path $ArchivePath -DestinationPath $TempDir -Force
    Write-Host "Installing fonts..."
    & $ScriptPath
} catch {
    throw "There was PROBLEM!! $($_.Exception)"
} finally {
    Write-Host "Cleaning up..."
    Remove-Item -Force -Recurse "$TempDir\fonts-master"
    Remove-Item -Force -Recurse $ArchivePath
}