[EN](CONSTANT.md)
# Define una literal.

## Definición
* Tipo: Define una literal
* Identificador de tipo: CONSTANT
* Descripción: Define una literal en el contexto especificado
* Número de parámetros: 1
* Tipos de datos aceptados de los parametros:
  * BOOLEAN
  * FLOAT
  * INTEGER
  * STRING
* Atributos:
  * type: Siempre CONSTANT
  * name: Nombre de la operación
  * message: El mensaje de la operación
  * outputName: Nombre destino del resultado
  * outputContext: (_Opcional_) Nombre del contexto donde se almacenará el resultado
  * parameters: Parametros
  * methods: Métodos en los que aplica la validación.

Estructura
```json
	{
		"name": "...",
		"type": "CONSTANT",
		"message": "...",
		"outputName": "...",
		"outputContext": [
			"..."
		],
		"value": "",
		"methods": [
			"..."
		]
	}
```
## Ejemplo

Requisito: Duplicar el valor de `original` en `nuevo`.

Estructura
```json
	{
		"name": "DUPLICANDO_VALOR",
		"type": "CONSTANT",
		"message": "duplicando {0}",
		"outputName": "nuevo",
		"value": "",
		"methods": [
			"PUT"
		]
	}
```
