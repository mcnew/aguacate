[EN](NOT_ZERO.md)
# Validador "no es cero"

## Definición
* Tipo: Validador "no es cero"
* Identificador de tipo: NOT_ZERO
* Descripción: Valida que el único parámetro no es zero.
* Número de parámetros: 1
* Tipos de datos aceptados:
  * FLOAT
  * INTEGER
* Atributos:
  * type: Siempre NOT_ZERO
  * name: Nombre de la validación
  * message: El mensaje de la validación
  * parameters: Un único parametro
  * methods: Métodos en los que aplica la validación.

Estructura
```json
	{
		"name": "...",
		"type": "NOT_ZERO",
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

Requisito: Validar que `alpha` no es igual cero (`alpha != 0`)

Estructura
```json
	{
		"name": "ALPHA_NO_ES__CERO",
		"type": "NOT_ZERO",
		"message": "Validando {0} no es cero",
		"parameters": [
			"alpha"
		],
		"methods": [
			"PUT"
		]
	}
```
