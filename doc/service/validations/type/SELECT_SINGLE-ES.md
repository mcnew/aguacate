[EN](SELECT_SINGLE.md)
# Recupera campo de base de datos

## Definición
* Tipo: Recupera de base de datos
* Identificador de tipo: SELECT_SINGLE
* Descripción: Recupera un único campo de base de datos
* Número de parámetros: 1
* Tipos de datos aceptados de los parametros:
  * BOOLEAN
  * DATE
  * DATETIME
  * FLOAT
  * INTEGER
  * STRING
  * TIME
* Atributos:
  * type: Siempre SELECT_SINGLE
  * name: Nombre de la operación
  * message: El mensaje de la operación
  * outputName: Nombre destino del resultado
  * outputContext: (_Opcional_) Contexto donde se almacenará el resultado
  * table: Tabla en la base de datos.
  * column: La columna a seleccionar
  * parameters: Parametros
  * methods: Métodos en los que aplica la operación.

Estructura
```json
	{
		"name": "...",
		"type": "SELECT_SINGLE",
		"message": "...",
		"outputName": "...",
		"outputContext": [
			"..."
		],
		"table": "...",
    "column": "..."
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
		"type": "SELECT_SINGLE",
		"message": "Insertando constante",
		"outputName": "estado",
		"table": "tabla1",
    "column": "estado",
		"parameters": [
			"id"
		]
		"methods": [
			"PUT"
		]
	}
```
