[EN](SQL_INSERT.md)
# Ejecuta una sentencia insert SQL.

## Definición
* Tipo: Ejecuta una sentencia insert SQL.
* Identificador de tipo: SQL_INSERT
* Descripción: Ejecuta una sentencia insert SQL.
* Tipos de datos aceptados de los parametros:
  * BOOLEAN
  * DATE
  * DATETIME
  * FLOAT
  * INTEGER
  * STRING
  * TIME
* Atributos:
  * type: Siempre SQL_INSERT
  * name: Nombre de la operación
  * message: El mensaje de la operación
  * sql: La sentencia SQL 
  * required: Parametros requeridos.
  * optional: Parametros opcionales.
  * methods: Métodos en los que aplica la operación.

Estructura
```json
	{
		"name": "...",
		"type": "SQL_INSERT",
		"message": "...",
		"sql": "...",
		"required": [
			"..."
		],
		"optional": [
			"..."
		],
		"methods": [
			"..."
		]
	}
```
## Ejemplo

Requisito: Ingresa un registro en la tabla `table1`, dados los campos `alpha` y `beta`.

Estructura
```json
	{
		"name": "INGRESAR_NUEVO",
		"type": "SQL_INSERT",
		"message": "Ingresando nuevo registro",
		"sql": "INSERT INTO table1(alpha, beta) VALUES(?, ?)",
		"required": [
			"alpha",
			"beta"
		],
		"optional": [
		],
		"methods": [
			"PUT"
		]
	}
```
