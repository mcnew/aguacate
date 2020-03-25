[EN](ZERO.md)
# Validador "es cero"

## Definición
* Tipo: Validador "es cero"
* Identificador de tipo: ZERO
* Descripción: Valida que el único parámetro es zero.
* Número de parámetros: 1
* Tipos de datos aceptados:
  * FLOAT
  * INTEGER
* Atributos:
  * type: Siempre ZERO
  * name: Nombre de la validación
  * message: El mensaje de la validación
  * parameters: Un único parametro
  * methods: Métodos en los que aplica la validación.

Estructura
```json
	{
		"name": "...",
		"type": "ZERO",
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

Requisito: Validar que `alpha` es igual cero (`alpha == 0`)

Estructura
```json
	{
		"name": "ALPHA_IGUAL_A_CERO",
		"type": "ZERO",
		"message": "Validando {0} es cero",
		"parameters": [
			"alpha"
		],
		"methods": [
			"PUT"
		]
	}
```
