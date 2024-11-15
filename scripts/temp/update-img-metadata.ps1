Get-ChildItem -Path "D:\Backup\Foto\Camera" -Recurse | ForEach-Object {
	$_.FullName
	# $file = $_.FullName
	# $date = (Get-ItemProperty -Path $file).CreationTime
	# $date = $date.ToString("yyyy:MM:dd HH:mm:ss")
	# Write-Host "Updating $file with date $date"
	# exiftool -overwrite_original -DateTimeOriginal="$date" $file
}