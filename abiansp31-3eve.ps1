# nombresp31-3eve.ps1

# doy un valor inicial distinto de 0
$opcion = -1

# el menú de siempre mostrando las opciones con un while simple con un limpiado de terminal cada vez que se reinicia
while ($opcion -ne 0) {
    Clear-Host
    Write-Host "=== MENÚ DE REGISTROS DE EVENTOS ==="
    Write-Host "1. Application"
    Write-Host "2. System"
    Write-Host "3. Security"
    Write-Host "4. Setup"
    Write-Host "5. ForwardedEvents"
    Write-Host "0. Salir"
    $opcion = Read-Host "Seleccione una opción"

    # cada opción lo que hace es meter el valor seleccionado a la variable log
    switch ($opcion) {
        1 { $log = "Application" }
        2 { $log = "System" }
        3 { $log = "Security" }
        4 { $log = "Setup" }
        5 { $log = "ForwardedEvents" }
        0 { break }
        default { Write-Host "Opción no válida"; Pause; continue }
    }

    if ($opcion -ne 0) {
        # Comprueba si el registro existe antes de mostrarlo
        if (Get-EventLog -List | Where-Object { $_.Log -eq $log }) {
            Write-Host "Mostrando los 12 últimos registros del tipo '$log'..."
            # muestro los registros usando la variable log
            Get-EventLog -LogName $log -Newest 12 | Format-Table TimeGenerated, EntryType, Source, Message -AutoSize
        }
        else {
            # devolución negativa del script en la cual el log no existe
            Write-Host "El registro '$log' no existe en este equipo."
        }
        # hace un pausado del script para poder ver bien el resultado
        Pause
    }
}
