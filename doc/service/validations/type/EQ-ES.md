[EN](EQ.md)
# Comparador "igual"

## Definición
* Tipo: Comparador "igual"
* Identificador de tipo: EQ
* Descripción: Valida que ambos parametros sean iguales.
* Número de parámetros: 2
* Atributos:
  * type: Siempre EQ
  * name: Nombre de la validación
  * message: El mensaje de la validación
  * parameters: Parametros
  * methods: Métodos en los que aplica la validación.

Estructura
```json
	{
		"name": "...",
		"type": "EQ",
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

Requisito: Validar que alpha es igua a beta (`alpha == beta`)

Estructura
```json
	{
		"name": "ALPHA_IGUAL_QUE_BETA",
		"type": "EQ",
		"message": "Validando {0} es igual a {1}",
		"parameters": [
			"alpha",
			"beta"
		],
		"methods": [
			"PUT"
		]
	}
```
