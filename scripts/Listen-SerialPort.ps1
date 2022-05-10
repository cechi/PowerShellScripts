$port = "COM7";
$serialPort = New-Object System.IO.Ports.SerialPort($port, 9600, [System.IO.Ports.Parity]::None, 8, [System.IO.Ports.StopBits]::One);
$serialPort.Open();

Write-Host "Press 'q' to exit."
Write-Host "Listening on port $($port)."

$stop = $false;
do {
	Start-Sleep -Milliseconds 1000;
	if ($serialPort.IsOpen) {
		$data = $serialPort.ReadExisting();
		$data = $data -replace [System.Environment]::NewLine, "";

		$time = Get-Date -Format "yyyy-MM-dd HH:mm:ss.fff";
		if (-not [string]::IsNullOrEmpty($data)) {
			Write-Host ("[" + $time + "] " + $data);
		}
	}

	if ([console]::KeyAvailable) {
		switch ([System.Console]::ReadKey().key) {
			"q" { $stop = $true }
		}
	}
} until ($stop)

$serialPort.Close();