# VaultPay API

Este es el proyecto backend de VaultPay, una aplicación desarrollada con Spring Boot.

## Requisitos Previos

- Java JDK 17 o superior
- Gradle 7.x o superior
- IDE de su preferencia (IntelliJ IDEA, Eclipse, VS Code, etc.)
- Git

## Configuración del Proyecto

1. Clone el repositorio:
```bash
git clone [URL_DEL_REPOSITORIO]
cd vaultpayapi
```

2. Compile el proyecto con Gradle:
```bash
./gradlew build
```

## Estructura del Proyecto

El proyecto sigue una estructura estándar de Spring Boot:

```
src/main/java/com/vaultpay/vaultpayapi/
├── persistence/     # Capa de persistencia (entidades, repositorios)
├── services/        # Capa de servicios
├── web/            # Controladores REST y configuración web
├── ServletInitializer.java
└── VaultpayapiApplication.java
```

## Ejecución del Proyecto

1. Para ejecutar el proyecto en modo desarrollo:
```bash
./gradlew bootRun
```

2. La aplicación estará disponible en:
```
http://localhost:8080
```

## Configuración Adicional

El archivo `application.properties` contiene la configuración principal del proyecto, incluyendo:
- Configuración de la base de datos
- Configuración del servidor
- Otras propiedades específicas de la aplicación