# Cliente Institucional

APK que se instala desde QR, registra IMEI y token, consulta estado en Supabase, y se comporta según licencia.

## Instalación

1. Escanear QR con link: `wioocliente://instalar?token=ABC123`
2. La app registra el IMEI y token
3. Consulta estado en Supabase
4. Si está activo → entra en modo kiosco
5. Si está bloqueado → muestra pantalla de mora

## Compilación

Usar GitHub Codespaces o GitHub Actions para compilar el APK desde el navegador.
