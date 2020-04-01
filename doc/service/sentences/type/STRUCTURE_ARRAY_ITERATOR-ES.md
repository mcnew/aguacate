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
  * outputName: Nombre destino del resultado
  * outputContext: (_Opcional_) Contexto donde se almacenará el resultado
  * required: Parametros requeridos.
  * optional: (_Ignorado_) Parametros opcionales.
  * sentences: Sentencias anidadas, a ejecutarse por cada elemento
  * methods: Métodos en los que aplica la operación.

Estructura
```json
	{
		"name": "...",
		"type": "STRUCTURE_ARRAY_ITERATOR",
		"message": "...",
		"outputName": "...",
		"outputContext": [
			"..."
		],
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

Requisito:  Ejecutar un conjunto de sentencias sobre cada elemento de alpha, que es un STRUCTURE_ARRAY. La variable que contenga cada elemento, debe ser current.

Estructura
```json
	{
		"name": "ITERACION_SOBRE_ALPHA",
		"type": "STRUCTURE_ARRAY_ITERATOR",
		"message": "Iterando sobre alpha",
		"outputName": "current",
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
