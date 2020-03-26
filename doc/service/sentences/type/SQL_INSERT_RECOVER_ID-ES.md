[EN](SQL_INSERT_RECOVER_ID.md)
# Ejecuta una sentencia insert SQL.

## Definición
* Tipo: Ejecuta una sentencia insert SQL.
* Identificador de tipo: SQL_INSERT_RECOVER_ID
* Descripción: Ejecuta una sentencia insert SQL, recuperando el identificador del registro insertado.
* Tipos de datos aceptados de los parametros:
  * BOOLEAN
  * DATE
  * DATETIME
  * FLOAT
  * INTEGER
  * STRING
  * TIME
* Atributos:
  * type: Siempre SQL_INSERT_RECOVER_ID
  * name: Nombre de la operación
  * message: El mensaje de la operación
  * outputName: Nombre destino del resultado
  * outputContext: (_Opcional_) Contexto donde se almacenará el resultado
  * sql: La sentencia SQL.
  * column: La columna del id a recuperar
  * required: Parametros requeridos.
  * optional: Parametros opcionales.
  * methods: Métodos en los que aplica la operación.

Estructura
```json
	{
		"name": "...",
		"type": "SQL_INSERT_RECOVER_ID",
		"message": "...",
		"outputName": "...",
		"outputContext": [
			"..."
		],
		"sql": "...",
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
		"type": "SQL_INSERT_RECOVER_ID",
		"message": "Ingresando nuevo registro",
		"outputName": "newid",
		"sql": "INSERT INTO table1(alpha, beta) VALUES(?, ?)",
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
