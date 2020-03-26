[EN](SQL_UPDATE.md)
# Ejecuta una sentencia update SQL.

## Definición
* Tipo: Ejecuta una sentencia update SQL.
* Identificador de tipo: SQL_UPDATE
* Descripción: Ejecuta una sentencia update SQL.
* Tipos de datos aceptados de los parametros:
  * BOOLEAN
  * DATE
  * DATETIME
  * FLOAT
  * INTEGER
  * STRING
  * TIME
* Atributos:
  * type: Siempre SQL_UPDATE
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
		"type": "SQL_UPDATE",
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

Requisito: actualizar el campo `alpha` del registro identificadon con el `id` dado en la tabla `table1`.

Estructura
```json
	{
		"name": "ACTUALIZAR_REGISTRO",
		"type": "SQL_UPDATE",
		"message": "Actualizando registro {0}",
		"sql": "UPDATE table1 SET alpha = ? WHERE id = ?",
		"required": [
			"id"
		],
		"optional": [
			"alpha"
		],
		"methods": [
			"PUT"
		]
	}
```
