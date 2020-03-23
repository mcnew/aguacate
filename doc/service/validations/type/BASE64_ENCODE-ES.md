[EN](BASE64_ENCODE.md)
# Conversor a "base 64"

## Definición
* Tipo: Conversor a "base 64"
* Identificador de tipo: BASE64_ENCODE
* Descripción: Codifica una cadena en base64.
* Número de parámetros: 1
* Tipos de datos aceptados:
  * CONTEXT
  * ARRAY
* Atributos:
  * type: Siempre BASE64_ENCODE
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
		"type": "BASE64_ENCODE",
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

Requisito: Calcular el hash en base 64 de `data`, poniendo el resultado en `hash`.

Estructura
```json
	{
		"name": "CALCULANDO_HASH",
		"type": "BASE64_ENCODE",
		"message": "extrayendo contenido",
		"outputName": "hash",
		"parameters": [
			"data"
		],
		"methods": [
			"PUT"
		]
	}
```
