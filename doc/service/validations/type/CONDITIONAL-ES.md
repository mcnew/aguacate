[EN](CONDITIONAL.md)
# Condicional

## Definición
* Tipo: Condiciónal
* Identificador de tipo: CONDITIONAL
* Descripción: Controla la ejecución de sentencias, equivalente a `if`.
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
  * type: Siempre CONDITIONAL
  * name: Nombre de la operación
  * message: El mensaje de la operación
  * test: NOT_NULL, NULL, NULL_OR_EMPTY, NOT_NULL_AND_NOT_EMPTY
  * parameters: Parametros
  * validations: Validaciones condicionadas a ejecutarse por test.
  * methods: Métodos en los que aplica la operación.

Estructura
```json
	{
		"name": "...",
		"type": "CONDITIONAL",
		"message": "...",
		"test": "...",
		"parameters": [
			"..."
		],
		"validations": [
			{
				"name": "...",
				"type": "..."
			}
		],
		"methods": [
			"..."
		]
	}
```
## Ejemplo

Requisito: Validar que `alpha` es no es null

Estructura
```json
	{
		"name": "INSERTANDO_CONTANTE",
		"type": "CONDITIONAL",
		"message": "Insertando contante",
		"test": "NOT_NULL",
		"parameters": [
			"alpha"
		],
		"validations": [
		],
		"methods": [
			"POST"
		]
	}
```
