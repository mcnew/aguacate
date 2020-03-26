[EN](INSERT.md)
# Ejecuta una sentencia insert.

## Definición
* Tipo: Ejecuta una sentencia insert.
* Identificador de tipo: INSERT
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
  * type: Siempre INSERT
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
		"type": "INSERT",
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

Requisito: Ingresa un registro en la tabla `table1`, dados los campos `alpha` y `beta`.

Estructura
```json
	{
		"name": "INGRESAR_NUEVO",
		"type": "INSERT",
		"message": "Ingresando nuevo registro",
		"table": "table1",
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
