[EN](SQL_COUNT_ZERO.md)
# Validador "es cero" resultado de un query SQL

## Definición
* Tipo: Validador "es cero" resultado de un query SQL
* Identificador de tipo: SQL_COUNT_ZERO
* Descripción: Ejecuta una sentencia SQL, recuperando un valor numerico, validando que el resultado sea cero.
* Número de parámetros: 1..N
* Tipos de datos aceptados de los parametros:
  * BOOLEAN
  * DATE
  * DATETIME
  * FLOAT
  * INTEGER
  * STRING
  * TIME
* Atributos:
  * type: Siempre SQL_COUNT_ZERO
  * name: Nombre de la operación
  * message: El mensaje de la operación
  * sql: La sentencia SQL a ejecutar
  * parameters: Parametros
  * methods: Métodos en los que aplica la operación.

Estructura
```json
	{
		"name": "...",
		"type": "SQL_COUNT_ZERO",
		"message": "...",
		"sql": "...",
		"parameters": [
			"..."
		],
		"methods": [
			"..."
		]
	}
```
## Ejemplo

Requisito: Validar que preexiste un registro con el valor de `name` en `tabla1`.

Estructura
```json
	{
		"name": "VALIDA_NO_EXISTE",
		"type": "SQL_COUNT_ZERO",
		"message": "Validando que {0} preexiste",
		"sql": "SELECT COUNT(*) FROM tabla1 WHERE name = ?",
		"parameters": [
			"name"
		],
		"methods": [
			"PUT"
		]
	}
```
