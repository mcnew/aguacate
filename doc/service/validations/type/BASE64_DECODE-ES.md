[EN](BASE64_DECODE.md)
# Conversor de "BASE 64"

## Definición
* Tipo: Conversor de "BASE 64"
* Identificador de tipo: BASE64_DECODE
* Descripción: Decodifica una cadena en base64.
* Número de parámetros: 1
* Tipos de datos aceptados:
  * STRING
* Atributos:
  * type: Siempre BASE64_DECODE
  * name: Nombre de la validación
  * message: El mensaje de la validación
  * parameters: Parametros
  * methods: Métodos en los que aplica la validación.

Estructura
```json
	{
		"name": "...",
		"type": "LT",
		"message": "...",
		"parameters": [
			"..."
		],
		"methods": [
			"..."
		]
	}
```
## Ejemplo

Requisito: Validar que `alpha` es menor que `beta` (`alpha < beta`)

Estructura
```json
	{
		"name": "ALPHA_MENOR_QUE_BETA",
		"type": "LT",
		"message": "Validando {0} menor que {1}",
		"parameters": [
			"alpha",
			"beta"
		],
		"methods": [
			"PUT"
		]
	}
```
