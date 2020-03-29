[EN](JSON_DECODE.md)
# Conversor de "JSON"

## Definición
* Tipo: Conversor de "JSON"
* Identificador de tipo: JSON_DECODE
* Descripción: Decodifica una cadena JSON.
* Número de parámetros: 1
* Tipos de datos aceptados de los parametros:
  * STRING
* Atributos:
  * type: Siempre JSON_DECODE
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
		"type": "JSON_DECODE",
		"message": "...",
		"outputName": "...",
		"outputContext": [
			"..."
		],
		"parameters": [
			"..."
		],
		"methods": [
			"..."
		]
	}
```
## Ejemplo

Requisito: Extraer el contenido de `content`. poniendolo en  `data`, en el contexto actual.

Estructura
```json
	{
		"name": "EXTRAYENDO_CONTENT",
		"type": "JSON_DECODE",
		"message": "extrayendo contenido",
		"outputName": "data",
		"parameters": [
			"content"
		],
		"methods": [
			"PUT"
		]
	}
```
