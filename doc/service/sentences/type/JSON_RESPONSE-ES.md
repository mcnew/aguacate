[EN](JSON_RESPONSE.md)
# Genera una respuesta JSON.

## Definición
* Tipo: Genera una respuesta JSON.
* Identificador de tipo: JSON_RESPONSE
* Descripción: Genera una respuesta JSON, en base a un unico parametro recibido.
* Tipos de datos aceptados de los parametros:
  * STRUCTURE or CONTEXT
  * STRUCTURE_ARRAY
* Atributos:
  * type: Siempre JSON_RESPONSE
  * name: Nombre de la operación
  * required: Parametros requeridos.
  * optional: (_Ignorado_) Parametros opcionales.
  * message: El mensaje de la operación
  * methods: Métodos en los que aplica la operación.

Estructura
```json
	{
		"name": "...",
		"type": "JSON_RESPONSE",
		"message": "...",
		"required": [
			"..."
		],
		"optional": [
			"..."
		],
		"methods": [
			"..."
		]
	}
```
## Ejemplo

Requisito: Generar una respuesta utilizando el objeto de la variable `elemento`.

Estructura
```json
	{
		"name": "GENERAR_RESPUESTA",
		"type": "JSON_RESPONSE",
		"message": "Generando respuesta en base a elemento",
		"required": [
			"elemento"
		],
		"optional": [
		],
		"methods": [
			"GET"
		]
	}
```
