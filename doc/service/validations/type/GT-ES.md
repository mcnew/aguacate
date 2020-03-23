[EN](GT.md)
# Comparador "mayor que"

## Definición
* Tipo: Comparador "mayor que"
* Identificador de tipo: GT
* Descripción: Valida que el primer parametro sea mayor estrictamente que el segundo parametro.
* Número de parámetros: 2
* Tipos de datos aceptados:
  * DATE
  * DATETIME
  * FLOAT
  * INTEGER
  * STRING
  * TIME
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

Requisito: Validar que `alpha` es mayor que `beta` (`alpha > beta`)

Estructura
```json
	{
		"name": "ALPHA_MAYOR_QUE_BETA",
		"type": "GT",
		"message": "Validando {0} mayor que {1}",
		"parameters": [
			"alpha",
			"beta"
		],
		"methods": [
			"PUT"
		]
	}
```
