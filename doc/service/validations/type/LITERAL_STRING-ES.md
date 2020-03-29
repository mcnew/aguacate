[EN](LITERAL_STRING.md)
# Define una literal.

## Definición
* Tipo: Define una literal.
* Identificador de tipo: LITERAL_STRING
* Descripción: Define una literal de tipo cadena en el contexto especificado
* Número de parámetros: 1
* Tipos de datos aceptados de los parametros:
  * STRING
* Atributos:
  * type: Siempre LITERAL_STRING
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
		"type": "LITERAL_STRING",
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

Requisito: Definir `message` con el valor "Hola mundo".

Estructura
```json
	{
		"name": "INSERTANDO_LITERAL",
		"type": "LITERAL_STRING",
		"message": "Insertando literal",
		"outputName": "message",
		"value": "Hola mundo",
		"methods": [
			"PUT"
		]
	}
```
