# Obtener fecha y hora actual
$fechaHora = Get-Date

# Ruta del archivo en el perfil del usuario
$rutaArchivo = "$env:USERPROFILE\fecha_hora.txt"

# Escribir la fecha y hora en el archivo (crea o sobrescribe)
$fechaHora | Out-File $rutaArchivo
