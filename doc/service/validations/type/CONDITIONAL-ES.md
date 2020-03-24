[EN](CONDITIONAL.md)
# Condicional

## Definición
* Tipo: Condiciónal
* Identificador de tipo: CONDITIONAL
* Descripción: Controla la ejecución de sentencias, equivalente a `if`.
* Número de parámetros: 1
* Tipos de datos aceptados de los parametros:
  * BOOLEAN
  * FLOAT
  * INTEGER
  * STRING
* Atributos:
  * type: Siempre CONDITIONAL
  * name: Nombre de la operación
  * message: El mensaje de la operación
  * test: NOT_NULL, NULL, NULL_OR_EMPTY, NOT_NULL_AND_NOT_EMPTY
  * parameters: Parametros
  * methods: Métodos en los que aplica la operación.

Estructura
```json
	{
		"name": "...",
		"type": "CONDITIONAL",
		"message": "...",
		"test": "...",
		"value": "",
		"parameters": [
			"..."
		],
		"methods": [
			"..."
		]
	}
```
## Ejemplo

Requisito: Definir `message` con el valor "Hola mundo".

Estructura
```json
	{
		"name": "INSERTANDO_CONTANTE",
		"type": "CONDITIONAL",
		"message": "Insertando contante",
		"outputName": "message",
		"value": "Hola mundo",
		"methods": [
			"PUT"
		]
	}
```
