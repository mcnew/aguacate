[EN](EQ.md)
# Tipo Comparador de igualdad

## Definición
* Tipo: Comparador de igualdad
* Identificador de tipo: EQ
* Descripción: Valida que ambos parametros sean iguales.
* Atributos:
  * type: Siempre EQ
  * name: Nombre de la validación
  * message: El mensaje de la validación
  * parameters: Lista ordenada de parametros
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

Estructura
```json
	{
		"name": COMPARACION_ALPHA_BETA",
		"type": "EQ",
		"message": "Comparación entre {0} y {1}",
		"parameters": [
			"alpha",
			"beta"
		],
		"methods": [
			"PUT"
		]
	}
```
