# Parcial 1 - Bases de Datos II

Base de datos para una tienda biblioteca con normalizacion hasta 3FN.

## Requisitos previos

- Docker Desktop (con WSL2 activado)
- WSL2 (Ubuntu)
- MySQL Workbench

## Pasos para reproducir el entorno

### 1. Clonar el repositorio

git clone https://github.com/alejandrarestrepoh-ops/parcial1-bbdd/tree/main/parcial1-bbdd

### 2. Levantar los contenedores

docker-compose up -d

### 3. Verificar que esten corriendo

docker ps

Debes ver 3 contenedores:
- parcial_app (puerto 8090)
- parcial_mariadb (puerto 3307)
- parcial_phpmyadmin (puerto 8091)

### 4. Acceder a phpMyAdmin

URL: http://localhost:8091
Usuario: root
Contrasena: root_password

### 5. Conectar MySQL Workbench

- Hostname: 127.0.0.1
- Port: 3307
- Username: root
- Password: root_password

### 6. Ejecutar los scripts SQL en orden

- Inserciones.sql
- Procedimientos.sql
- Triggers.sql

## Estructura del proyecto

- Dockerfile
- docker-compose.yml
- Inserciones.sql
- Procedimientos.sql
- Triggers.sql
- MER.mwb
- normalizacion.pdf
- Primarias_Foraneas.pdf
- README.md
- src/

## Descripcion de la base de datos

La base de datos `biblioteca_db` fue normalizada hasta 3FN y contiene 9 tablas:

1. departamentos
2. ciudades
3. clientes
4. autores
5. editoriales
6. productos
7. pedidos
8. detalle_pedido
9. auditoria_precios

## Procedimientos y Triggers

- **pedidosPorCliente(IN cedula INT)**: Lista los pedidos de un cliente especifico con JOIN.
- **trg_validar_stock**: Antes de insertar un detalle, verifica que haya stock suficiente.
- **trg_auditar_precio**: Registra en `auditoria_precios` los cambios de precio de los productos.

## Autor

Alejandra Restrepo
