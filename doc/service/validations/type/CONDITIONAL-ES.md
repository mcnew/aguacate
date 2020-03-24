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
  * outputName: Nombre destino del resultado
  * outputContext: (_Opcional_) Contexto donde se almacenará el resultado
  * parameters: Parametros
  * methods: Métodos en los que aplica la operación.

Estructura
```json
	{
		"name": "...",
		"type": "CONDITIONAL",
		"message": "...",
		"outputName": "...",
		"outputContext": [
			"..."
		],
		"value": "",
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
