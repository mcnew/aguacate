[EN](NE.md)
# Comparador "no igual"

## Definición
* Tipo: Comparador "no igual"
* Identificador de tipo: NE
* Descripción: Valida que ambos parametros no sean iguales.
* Número de parámetros: 2
* Atributos:
  * type: Siempre NE
  * name: Nombre de la validación
  * message: El mensaje de la validación
  * parameters: Parametros
  * methods: Métodos en los que aplica la validación.

Estructura
```json
	{
		"name": "...",
		"type": "NE",
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

Requisito: Validar que `alpha` no es igual a `beta` (`alpha != beta`)

Estructura
```json
	{
		"name": "ALPHA_NO_IGUAL_QUE_BETA",
		"type": "NE",
		"message": "Validando {0} no igual a {1}",
		"parameters": [
			"alpha",
			"beta"
		],
		"methods": [
			"PUT"
		]
	}
```
