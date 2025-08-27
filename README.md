# 🐾 Suite de Pruebas API Petstore

Automatización de la gestión de mascotas usando la [API de Petstore](https://petstore.swagger.io/v2/).

---

## 🔗 Repositorio

- **GitHub Repository:** [Petstore_Swagger_API](https://github.com/HarinChC/Petstore_Swagger_API.git)

---

## 🔗 Referencia de la API

- **URL Base:** `https://petstore.swagger.io/v2/`
- **Swagger:** [Petstore Swagger](https://petstore.swagger.io/#/pet/updatePet)

---
## 🚀 Uso

1. Clona el repositorio:
   ```bash
   git clone https://github.com/HarinChC/Petstore_Swagger_API.git
---
## 🧪 Casos de Prueba

1. 🐶 **Agregar una nueva mascota**
   - **Descripción:** Este caso de prueba envía una solicitud POST a la API para agregar una nueva mascota.
   - **Datos enviados:**
     ```json
     {
       "id": 12345,
       "name": "Pug_Luna",
       "status": "available"
     }
     ```
   - **Objetivo:** Verificar que la API registre correctamente una nueva mascota con el estado `200`.

2. 🔍 **Verificar la adición**
   - **Descripción:** Este caso de prueba envía una solicitud GET para recuperar la información de la mascota recién agregada.
   - **Datos esperados:**
     ```json
     {
       "id": 12345,
       "name": "Pug_Luna",
       "status": "available"
     }
     ```
   - **Objetivo:** Confirmar que la mascota fue agregada correctamente y que los datos coinciden con los enviados.

3. ✏️ **Modificar el nombre**
   - **Descripción:** Este caso de prueba envía una solicitud PUT para actualizar el nombre de la mascota.
   - **Datos enviados:**
     ```json
     {
       "id": 12345,
       "name": "PugCarlino_Luna",
       "status": "available"
     }
     ```
   - **Objetivo:** Verificar que la API permita actualizar el nombre de la mascota.

4. ✅ **Verificar la modificación**
   - **Descripción:** Este caso de prueba envía una solicitud GET para consultr la información actualizada de la mascota recien modificada.
   - **Datos esperados:**
     ```json
     {
       "id": 12345,
       "name": "PugCarlino_Luna",
       "status": "available"
     }
     ```
   - **Objetivo:** Confirmar que el nombre de la mascota fue actualizado correctamente.

5. 🗑️ **Eliminar la mascota**
   - **Descripción:** Este caso de prueba envía una solicitud DELETE para eliminar la mascota registrada.
   - **Datos enviados:**
     ```json
     {
       "id": 12345
     }
     ```
   - **Objetivo:** Verificar que la API elimine correctamente la mascota.

---
## 📁 Estructura de Carpetas y Archivos

```
src/
└── test/
    ├── java/
    │   └── petstore.pets/
    │       ├── ActualizarNombreMascota_Runner
    │       ├── AgregarMascota_Runner
    │       ├── ConsultarMascota_Runner
    │       ├── ConsultarMascotaID_Runner
    │       ├── EliminarMascota_Runner
    │       ├── karate-config.js
    │       └── logback-test.xml
    └── resources/
        └── petstore/
            ├── Datos/
            │   ├── mascotaActualizarNombre.json
            │   └── mascotas.json
            └── features/
                ├── ActualizarNombreMascota.feature
                ├── AgregarMascota.feature
                ├── ConsultarMascota.feature
                ├── ConsultarMascotaID.feature
                └── EliminarMascota.feature
```

---

## 📂 Descripción de Carpetas y Archivos

### `test/java/petstore.pets/`
- **Runners (`*_Runner`):**  
  Clases Java que ejecutan los archivos `.feature` de Karate, normalmente usando JUnit.
    - `ActualizarNombreMascota_Runner`
    - `AgregarMascota_Runner`
    - `ConsultarMascota_Runner`
    - `ConsultarMascotaID_Runner`
    - `EliminarMascota_Runner`
- **karate-config.js:**  
  Archivo de configuración global para inicializar variables, URLs, timeouts y settings de Karate.
- **logback-test.xml:**  
  Configuración de logging para los reportes de ejecución de pruebas.

### `test/resources/petstore/Datos/`
- **Archivos de datos (`*.json`):**
    - `mascotaActualizarNombre.json`: Datos específicos para pruebas de actualización de nombre de mascota.
    - `mascotas.json`: Datos generales de mascotas utilizados por diferentes escenarios de prueba.

### `test/resources/petstore/features/`
- **Features (`*.feature`):**  
  Archivos escritos en Gherkin con los escenarios de prueba automatizados.
    - `ActualizarNombreMascota.feature`
    - `AgregarMascota.feature`
    - `ConsultarMascota.feature`
    - `ConsultarMascotaID.feature`
    - `EliminarMascota.feature`

---
    
## 🚀 Ejecución de pruebas

Puedes ejecutar las pruebas desde tu IDE (IntelliJ, Eclipse, etc.) usando los runners, o desde la terminal con Gradle/Maven según tu configuración.



