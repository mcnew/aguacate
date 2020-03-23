[EN](GT.md)
# Comparador "mayor que"

## Definición
* Tipo: Comparador "mayor que"
* Identificador de tipo: GT
* Descripción: Valida que el primer parametro sea mayor estrictamente que el segundo parametro.
* Número de parámetros: 2
* Atributos:
  * type: Siempre GT
  * name: Nombre de la validación
  * message: El mensaje de la validación
  * parameters: Parametros
  * methods: Métodos en los que aplica la validación.

Estructura
```json
	{
		"name": "...",
		"type": "GT",
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

Estructura
```json
	{
		"name": "ALPHA_MAYOR_QUE_BETA",
		"type": "GT",
		"message": "Validando que {0} sea mayor que {1}",
		"parameters": [
			"alpha",
			"beta"
		],
		"methods": [
			"PUT"
		]
	}
```
