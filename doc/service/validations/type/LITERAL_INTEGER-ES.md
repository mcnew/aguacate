[EN](LITERAL_INTEGER.md)
# Define una literal.

## Definición
* Tipo: Define una literal
* Identificador de tipo: LITERAL_INTEGER
* Descripción: Define una literal de tipo integer en el contexto especificado
* Número de parámetros: 1
* Tipos de datos aceptados de los parametros:
  * STRING
* Atributos:
  * type: Siempre LITERAL_INTEGER
  * name: Nombre de la operación
  * message: El mensaje de la operación
  * outputName: Nombre destino del resultado
  * outputContext: (_Opcional_) Contexto donde se almacenará el resultado
  * value: Valor definido
  * methods: Métodos en los que aplica la operación.

Estructura
```json
	{
		"name": "...",
		"type": "LITERAL_INTEGER",
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

Requisito: Definir `value` con el valor 55.

Estructura
```json
	{
		"name": "INSERTANDO_LITERAL",
		"type": "LITERAL_INTEGER",
		"message": "Insertando literal",
		"outputName": "value",
		"value": "55",
		"methods": [
			"PUT"
		]
	}
```
