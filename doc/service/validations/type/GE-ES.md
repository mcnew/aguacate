[EN](GE.md)
# Comparador "mayor o igual que"

## Definición
* Tipo: Comparador "mayor o igual que"
* Identificador de tipo: GE
* Descripción: Valida que el primer parametro sea mayor o igual que el segundo parametro.
* Número de parámetros: 2
* Tipos de datos aceptados:
  * DATE
  * DATETIME
  * FLOAT
  * INTEGER
  * STRING
  * TIME
* Atributos:
  * type: Siempre GE
  * name: Nombre de la validación
  * message: El mensaje de la validación
  * parameters: Parametros
  * methods: Métodos en los que aplica la validación.

Estructura
```json
	{
		"name": "...",
		"type": "GE",
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

Requisito: Validar que `alpha` es mayor o igual que `beta` (`alpha >= beta`)

Estructura
```json
	{
		"name": "ALPHA_MAYOR_IGUAL_BETA",
		"type": "GE",
		"message": "Validando {0} mayor o igual que {1}",
		"parameters": [
			"alpha",
			"beta"
		],
		"methods": [
			"PUT"
		]
	}
```
