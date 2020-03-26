[EN](SQL_SELECT_SINGLE.md)
# Recupera campo de base de datos

## Definición
* Tipo: Recupera de base de datos
* Identificador de tipo: SQL_SELECT_SINGLE
* Descripción: Recupera un único campo de base de datos
* Tipos de datos aceptados de los parametros:
  * BOOLEAN
  * DATE
  * DATETIME
  * FLOAT
  * INTEGER
  * STRING
  * TIME
* Atributos:
  * type: Siempre SQL_SELECT_SINGLE
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
		"type": "SQL_SELECT_SINGLE",
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

Requisito: Recuperar la columna `estado` de la tabla `tabla1` utilizando la columna `id`

Estructura
```json
	{
		"name": "CONSULTA_ESTADO",
		"type": "SQL_SELECT_SINGLE",
		"message": "Recuperación de estado",
		"outputName": "estado",
		"sql": "SELECT estado FROM tabla1 WHERE id = ?",
		"required": [
			"id"
		],
		"optional": [
		],
		"methods": [
			"PUT"
		]
	}
```
