[EN](INSERT_RECOVER_ID.md)
# Ejecuta una sentencia insert.

## Definición
* Tipo: Ejecuta una sentencia insert.
* Identificador de tipo: INSERT_RECOVER_ID
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
  * type: Siempre INSERT_RECOVER_ID
  * name: Nombre de la operación
  * message: El mensaje de la operación
  * outputName: Nombre destino del resultado
  * outputContext: (_Opcional_) Contexto donde se almacenará el resultado
  * table: Nombre de la tabla
  * column: La columna del id a recuperar
  * required: Parametros requeridos.
  * optional: Parametros opcionales.
  * methods: Métodos en los que aplica la operación.

Estructura
```json
	{
		"name": "...",
		"type": "INSERT_RECOVER_ID",
		"message": "...",
		"outputName": "...",
		"outputContext": [
			"..."
		],
		"table": "...",
		"column": "...",
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

Requisito: Ingresa un registro en la tabla `table1`, dados los campos `alpha` y `beta`,
recuperando el `id` en `newid`.

Estructura
```json
	{
		"name": "INGRESAR_NUEVO",
		"type": "INSERT_RECOVER_ID",
		"message": "Ingresando nuevo registro",
		"outputName": "newid",
		"table": "table1",
		"column": "id",
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
