$device_id = "VID_046D&PID_C547&MI_00\9&2296eeda&0&0000"
$reg_path = "HKLM:\SYSTEM\CurrentControlSet\Enum\HID\$device_id\Device Parameters"

if ($args[0] -eq "reverse") {
    Set-ItemProperty -Path $reg_path -Name FlipFlopWheel -Value 0
    Write-Host "Natural scrolling feature for your mouse has been DISABLED" -ForegroundColor Green
    exit
}

Set-ItemProperty -Path $reg_path -Name FlipFlopWheel -Value 1