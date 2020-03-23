[EN](BASE64_DECODE.md)
# Conversor de "base 64"

## Definición
* Tipo: Conversor de "baseE 64"
* Identificador de tipo: BASE64_DECODE
* Descripción: Decodifica una cadena en base64.
* Número de parámetros: 1
* Tipos de datos aceptados:
  * STRING
* Atributos:
  * type: Siempre BASE64_DECODE
  * name: Nombre de la operación
  * message: El mensaje de la validación
  * outputName: (Opcional) Nombre destino del resultado
  * outputContext: Nombre del contexto donde se almacenará el resultado
  * parameters: Parametros
  * methods: Métodos en los que aplica la validación.

Estructura
```json
	{
		"name": "...",
		"type": "BASE64_DECODE",
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
		"type": "BASE64_DECODE",
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
