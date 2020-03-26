[EN](SQL_SELECT_SINGLE_ROW.md)
# Recupera un registro de base de datos

## Definición
* Tipo: Recupera un registro de base de datos
* Identificador de tipo: SQL_SELECT_SINGLE_ROW
* Descripción: Recupera todos los campos de un registro de una base de datos SQL.
* Tipos de datos aceptados de los parametros:
  * BOOLEAN
  * DATE
  * DATETIME
  * FLOAT
  * INTEGER
  * STRING
  * TIME
* Atributos:
  * type: Siempre SQL_SELECT_SINGLE_ROW
  * name: Nombre de la operación
  * message: El mensaje de la operación
  * outputName: Nombre destino del resultado
  * outputContext: (_Opcional_) Contexto donde se almacenará el resultado
  * sql: La sentencia SQL a ejecutar
  * required: Parametros requeridos.
  * optional: Parametros opcionales.
  * methods: Métodos en los que aplica la operación.

Estructura
```json
	{
		"name": "...",
		"type": "SQL_SELECT_SINGLE_ROW",
		"message": "...",
		"outputName": "...",
		"outputContext": [
			"..."
		],
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

Requisito: Recuperar la columnas `estado` y `nombre` de la tabla `tabla1` utilizando la columna `id`

Estructura
```json
	{
		"name": "CONSULTA_DATOS",
		"type": "SQL_SELECT_SINGLE_ROW",
		"message": "Recuperación de datos de {0}",
		"outputName": "datos",
		"sql": "SELECT estado, nombre FROM tabla1 WHERE id = ?",
		"required": [
			"id"
		],
		"optional": [
            "estado",
            "nombre"
		],
		"methods": [
			"PUT"
		]
	}
```
