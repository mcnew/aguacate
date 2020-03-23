[EN](LE.md)
# Comparador "menor o igual que"

## Definición
* Tipo: Comparador "menor o igual que"
* Identificador de tipo: LE
* Descripción: Valida que el primer parametro sea menor estrictamente que el segundo parametro.
* Número de parámetros: 2
* Tipos de datos aceptados:
  * DATE
  * DATETIME
  * FLOAT
  * INTEGER
  * STRING
  * TIME
* Atributos:
  * type: Siempre LE
  * name: Nombre de la validación
  * message: El mensaje de la validación
  * parameters: Parametros
  * methods: Métodos en los que aplica la validación.

Estructura
```json
	{
		"name": "...",
		"type": "LE",
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

Requisito: Validar que `alpha` es menor o igual que `beta` (`alpha <= beta`)

Estructura
```json
	{
		"name": "ALPHA_MENOR_O_IGUAL_A_BETA",
		"type": "LE",
		"message": "Validando {0} menor o igual que {1}",
		"parameters": [
			"alpha",
			"beta"
		],
		"methods": [
			"PUT"
		]
	}
```
