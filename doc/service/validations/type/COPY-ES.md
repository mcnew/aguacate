[EN](COPY.md)
# Copia un dato.

## Definición
* Tipo: Copia
* Identificador de tipo: COPY
* Descripción: Copia un valor en otra valirable.
* Número de parámetros: 1
* Tipos de datos aceptados de los parametros:
  * BOOLEAN
  * DATE
  * DATETIME
  * FLOAT
  * INTEGER
  * STRING
  * TIME
* Atributos:
  * type: Siempre COPY
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
		"type": "COPY",
		"message": "...",
		"outputName": "...",
		"outputContext": [
			"..."
		],
		"parameters": [
			"..."
		],
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
		"type": "COPY",
		"message": "duplicando {0}",
		"outputName": "nuevo",
		"parameters": [
			"original"
		],
		"methods": [
			"PUT"
		]
	}
```
