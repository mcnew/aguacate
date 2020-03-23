[EN](TO_JSON.md)
# Conversor a "JSON"

## Definición
* Tipo: Conversor a "JSON"
* Identificador de tipo: TO_JSON
* Descripción: Codifica a JSON.
* Número de parámetros: 1
* Tipos de datos aceptados de los parametros:
  * CONTEXT
  * ARRAY
* Atributos:
  * type: Siempre TO_JSON
  * name: Nombre de la operación
  * message: El mensaje de la operación
  * outputName: (_Opcional_) Nombre destino del resultado
  * outputContext: Nombre del contexto donde se almacenará el resultado
  * parameters: Parametros
  * methods: Métodos en los que aplica la validación.

Estructura
```json
	{
		"name": "...",
		"type": "TO_JSON",
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
		"type": "TO_JSON",
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
