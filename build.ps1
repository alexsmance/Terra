# Define file paths
$inputFile  = ".\assets\terra.css"
$folderPath = ".\dist\"
$outputFile = ".\dist\terra.min.css"

try {
  
  if (-Not (Test-Path -Path $folderPath -PathType Container)) {
    # Create the folder
    New-Item -Path $folderPath -ItemType Directory -Force
    Write-Host "Folder created successfully at: $folderPath" -ForegroundColor Green
  }

  # Read file, remove all whitespace (spaces, tabs, newlines)
  $inputFile = $inputFile -replace '\s+', ''
  Write-Host $inputFile

  # Write cleaned content to output file
  Set-Content -Path $outputFile -Value $inputFile -Encoding UTF8
  Write-Host "Build Completed"
}
catch {
  Write-Host "Error: $($_.Exception.Message)" -ForegroundColor Red
}