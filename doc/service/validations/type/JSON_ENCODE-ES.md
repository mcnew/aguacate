[EN](JSON_ENCODE.md)
# Conversor a "JSON"

## Definición
* Tipo: Conversor a "JSON"
* Identificador de tipo: JSON_ENCODE
* Descripción: Codifica a JSON.
* Número de parámetros: 1
* Tipos de datos aceptados de los parametros:
  * CONTEXT
  * ARRAY
* Atributos:
  * type: Siempre JSON_ENCODE
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
		"type": "JSON_ENCODE",
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

Requisito: Convertir `data` en una cadena JSON.

Estructura
```json
	{
		"name": "GENERANDO_JSON",
		"type": "JSON_ENCODE",
		"message": "generando json",
		"outputName": "json",
		"parameters": [
			"data"
		],
		"methods": [
			"PUT"
		]
	}
```
