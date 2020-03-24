[EN](SHA256.md)
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
  * outputName: Nombre destino del resultado
  * outputContext: (_Opcional_) Contexto donde se almacenará el resultado
  * parameters: Parametros
  * methods: Métodos en los que aplica la operación.

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
