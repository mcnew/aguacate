[EN](GT.md)
# Comparador "menor que"

## Definición
* Tipo: Comparador "menor que"
* Identificador de tipo: LT
* Descripción: Valida que el primer parametro sea menor estrictamente que el segundo parametro.
* Número de parámetros: 2
* Atributos:
  * type: Siempre LT
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
