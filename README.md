# Curso de Desarrollo Web con Flutter

### NOTAS FINALES DEL TALLER
Entren al proyecto y les aprecera varias carpetas, las importantes que tienen el codigo son:
- **diseño_chill**: este tiene el diseño que les mostre al final
- **diseño_no_chill**: es el que se vio durante el taller

### Herramientas Necesarias

1. **Computadora con conexión a internet:**
   - Sistema operativo: Windows, macOS, o Linux.
   - Procesador básico o intermedio.
   - Espacio en disco: Al menos 10 GB libres.

2. **Navegador recomendado:**
   - Google Chrome (para probar las aplicaciones web).

3. **Editor de texto o IDE:**
   - **Recomendado:**
     - [Visual Studio Code](https://code.visualstudio.com/)
   - Extensiones necesarias para VS Code:
     - [Flutter](https://marketplace.visualstudio.com/items?itemName=Dart-Code.flutter)
     - [Dart](https://marketplace.visualstudio.com/items?itemName=Dart-Code.dart-code)
     - [Flutter Widget Snippets](https://marketplace.visualstudio.com/items?itemName=alexisvt.flutter-snippets)
     - [Awesome Flutter Snippets](https://marketplace.visualstudio.com/items?itemName=Nash.awesome-flutter-snippets)

4. **Entorno de desarrollo local:**
   - [Flutter SDK](https://docs.flutter.dev/get-started/install) instalado y configurado.
   - Tener [Git](https://git-scm.com/) instalado para gestionar proyectos y repositorios.

5. **Servicios en la nube:**
   - **Supabase**: [Crear cuenta gratuita](https://supabase.com/) para la gestión de bases de datos y autenticación en tiempo real.

6. **Cuenta en servicios opcionales:**
   - [GitHub](https://github.com/) para gestionar repositorios de código.

---

## Recursos a Descargarse Previamente

1. **Flutter SDK:**
   - Descárgalo desde la página oficial:  
     [Descargar Flutter SDK](https://docs.flutter.dev/get-started/install)
   - Asegúrate de seguir las instrucciones específicas para tu sistema operativo para web.

2. **Archivos base del curso:**
   - Clona o descarga este repositorio del curso.

3. **Configuración inicial de Supabase:**
   - Crea un proyecto en Supabase.
   - Anota las credenciales y URLs generadas para conectarte desde Flutter.

---

## Herramientas y Recursos Complementarios

1. **Prueba inicial:**
   - Crea un proyecto en Flutter y pruébalo en el navegador con el siguiente comando:
     ```bash
     flutter create mi_proyecto_web
     cd mi_proyecto_web
     flutter run -d chrome
     ```

2. **Configuración inicial con Supabase:**
   - Agrega la dependencia de Supabase a tu proyecto Flutter:
     ```bash
     flutter pub add supabase_flutter
     ```
   - Inicializa Supabase en tu proyecto:
     ```dart
     Supabase.initialize(
       url: 'https://<tu-supabase-url>',
       anonKey: '<tu-supabase-anon-key>',
     );
     ```

3. **Documentación recomendada:**
   - [Flutter Web Docs](https://docs.flutter.dev/web) - Guía oficial para Flutter Web.
   - [Dart Documentation](https://dart.dev/guides) - Documentación oficial de Dart.
   - [Supabase Docs](https://supabase.com/docs) - Documentación oficial de Supabase.

---

## Contacto

Si tienes dudas antes o durante el curso, puedes contactarme en:
- **Correo:** nugetdepatto.stay@gmail.com
