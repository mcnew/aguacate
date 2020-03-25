[EN](STRUCTURE_ARRAY_ITERATOR.md)
# Iterador de arreglo de estructuras

## Definición
* Tipo: Condiciónal
* Identificador de tipo: STRUCTURE_ARRAY_ITERATOR
* Descripción: Iterador de arreglo de estructuras
* Número de parámetros: 1
* Tipos de datos aceptados de los parametros:
  * STRUCTURE_ARRAY
* Atributos:
  * type: Siempre STRUCTURE_ARRAY_ITERATOR
  * name: Nombre de la operación
  * message: El mensaje de la operación
  * parameters: Parametros
  * validations: Validaciones condicionadas a ejecutarse por test.
  * methods: Métodos en los que aplica la operación.

Estructura
```json
	{
		"name": "...",
		"type": "STRUCTURE_ARRAY_ITERATOR",
		"message": "...",
		"parameters": [
			"..."
		],
		"validations": [
			{
				"name": "...",
				"type": "..."
			}
		],
		"methods": [
			"..."
		]
	}
```
## Ejemplo

Requisito: Ejecutar un conjunto de validaciones sobre alpha, que es un STRUCTURE_ARRAY.

Estructura
```json
	{
		"name": "ITERACION_SOBRE_ALPHA",
		"type": "STRUCTURE_ARRAY_ITERATOR",
		"message": "Iterando sobre alpha",
		"parameters": [
			"alpha"
		],
		"validations": [
		],
		"methods": [
			"POST"
		]
	}
```
