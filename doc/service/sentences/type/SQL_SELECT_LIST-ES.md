[EN](SQL_SELECT_LIST.md)
# Recupera campo de multiples registros de base de datos

## Definición
* Tipo: Recupera campo de multiples registros de base de datos
* Identificador de tipo: SQL_SELECT_LIST
* Descripción: Recupera un único campo de multiples registros de base de datos
* Tipos de datos aceptados de los parametros:
  * BOOLEAN
  * DATE
  * DATETIME
  * FLOAT
  * INTEGER
  * STRING
  * TIME
* Atributos:
  * type: Siempre SQL_SELECT_LIST
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
		"type": "SQL_SELECT_LIST",
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

Requisito: Recuperar la columna `estado` de la tabla `tabla1` utilizando la columna `grupo`

Estructura
```json
	{
		"name": "CONSULTA_ESTADO",
		"type": "SQL_SELECT_LIST",
		"message": "Recuperación de estado",
		"outputName": "estado",
		"sql": "SELECT estado FROM tabla1 WHERE grupo = ?",
		"required": [
			"grupo"
		],
		"optional": [
		],
		"methods": [
			"PUT"
		]
	}
```
