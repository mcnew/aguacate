[EN](FROM_JSON.md)
# Conversor de "JSON"

## Definición
* Tipo: Conversor de "JSON"
* Identificador de tipo: FROM_JSON
* Descripción: Decodifica una cadena JSON.
* Número de parámetros: 1
* Tipos de datos aceptados de los parametros:
  * STRING
* Atributos:
  * type: Siempre FROM_JSON
  * name: Nombre de la operación
  * message: El mensaje de la operación
  * outputName: Nombre destino del resultado
  * outputContext: (_Opcional_) Nombre del contexto donde se almacenará el resultado
  * parameters: Parametros
  * methods: Métodos en los que aplica la validación.

Estructura
```json
	{
		"name": "...",
		"type": "FROM_JSON",
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
		"type": "FROM_JSON",
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
