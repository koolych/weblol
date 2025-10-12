# Define the URL of the ZIP file
$zipFileUrl = "https://koolych.ru/media/cfg/cfg.zip"

# Define the path where you want to save the downloaded ZIP file
$downloadPath = "$env:USERPROFILE\AppData\Local\Temp\cfg.zip"

# Define the destination path for the extracted contents
$extractPath = "game\csgo\cfg"

# Download the ZIP file using Invoke-WebRequest and save it to the specified path
Invoke-WebRequest -Uri $zipFileUrl -OutFile $downloadPath

# Create the destination directory if it doesn't exist
if (-not (Test-Path $extractPath)) {
    New-Item -Path $extractPath -ItemType Directory | Out-Null
}

# Extract the contents of the downloaded ZIP file
Expand-Archive -LiteralPath $downloadPath -DestinationPath $extractPath -Force

# Optional: Remove the downloaded ZIP file after extraction
Remove-Item $downloadPath