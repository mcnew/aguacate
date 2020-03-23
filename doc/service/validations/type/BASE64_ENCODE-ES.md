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
  * outputName: (_Opcional_) Nombre destino del resultado
  * outputContext: Nombre del contexto donde se almacenará el resultado
  * parameters: Parametros
  * methods: Métodos en los que aplica la validación.

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