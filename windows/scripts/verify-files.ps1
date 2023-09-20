# Verify the existence of files in the "packer-tester" folder
$folderPath = "C:\packer-tester"
$file1 = Join-Path -Path $folderPath -ChildPath "vivek1.txt"
$file2 = Join-Path -Path $folderPath -ChildPath "vivek2.txt"

if (Test-Path -Path $file1 -and Test-Path -Path $file2) {
    Write-Host "Files exist in the 'packer-tester' folder."
} else {
    Write-Host "One or more files are missing in the 'packer-tester' folder." -ForegroundColor Red
    exit 1
}
