[EN](STRUCTURE_ARRAY_ITERATOR.md)
# Iterador de arreglo de estructuras

## Definición
* Tipo: Iterador de arreglo de estructuras
* Identificador de tipo: STRUCTURE_ARRAY_ITERATOR
* Descripción: Itera sobre un arreglo de estructuras
* Tipos de datos aceptados de los parametros:
  * STRUCTURE_ARRAY
* Atributos:
  * type: Siempre STRUCTURE_ARRAY_ITERATOR
  * name: Nombre de la operación
  * message: El mensaje de la operación
  * required: Parametros requeridos.
  * optional: Parametros opcionales.
  * sentences: Sentencias anidadas, a ejecutarse por cada elemento
  * methods: Métodos en los que aplica la operación.

Estructura
```json
	{
		"name": "...",
		"type": "STRUCTURE_ARRAY_ITERATOR",
		"message": "...",
		"required": [
			"..."
		],
		"optional": [
			"..."
		],
		"sentences": [
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

Requisito:  Ejecutar un conjunto de sentencias sobre cada elemento de alpha, que es un STRUCTURE_ARRAY.

Estructura
```json
	{
		"name": "ITERACION_SOBRE_ALPHA",
		"type": "STRUCTURE_ARRAY_ITERATOR",
		"message": "Iterando sobre alpha",
		"required": [
			"alpha"
		],
		"optional": [
		],
		"sentences": [
		],
		"methods": [
			"PUT"
		]
	}
```
