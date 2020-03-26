[EN](UPDATE.md)
# Ejecuta una sentencia update.

## Definición
* Tipo: Ejecuta una sentencia update.
* Identificador de tipo: UPDATE
* Descripción: Construye y ejecuta una sentencia SQL.
* Tipos de datos aceptados de los parametros:
  * BOOLEAN
  * DATE
  * DATETIME
  * FLOAT
  * INTEGER
  * STRING
  * TIME
* Atributos:
  * type: Siempre UPDATE
  * name: Nombre de la operación
  * message: El mensaje de la operación
  * table: Nombre de la tabla
  * required: Parametros requeridos.
  * optional: Parametros opcionales.
  * methods: Métodos en los que aplica la operación.

Estructura
```json
	{
		"name": "...",
		"type": "UPDATE",
		"message": "...",
		"table": "...",
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

Requisito: Actualizar los campos `alpha` y `beta` del registro identificado por el campo `id` en la tabla `table1`.

Estructura
```json
	{
		"name": "ACTUALIZAR_REGISTRO",
		"type": "UPDATE",
		"message": "Actualizando el registro {0}",
		"table": "table1",
		"required": [
			"id"
		],
		"optional": [
			"alpha",
			"beta"
		],
		"methods": [
			"PATCH"
		]
	}
```
