$dir = $args[0] #'C:\dev\Reporting\Grafika1'

function ScanFiles($path) {
    foreach ($item in Get-ChildItem $path | sort -Descending LastWriteTime) {
        if ($exclude | Where {$item -like $_}) { continue }

        if (Test-Path $item.FullName -PathType Container) {
            $item
            ScanFiles $item.FullName
        } else {
            $newName = $item.FullName -replace " \(\d\d\d\d_\d\d_\d\d \d\d_\d\d_\d\d UTC\)",""
            if (Test-Path $newName) {
                Remove-Item -Path $item.FullName
            } else {
                Rename-Item -Path $item.FullName -NewName $newName
            }
        }
    }
}

ScanFiles $dir
