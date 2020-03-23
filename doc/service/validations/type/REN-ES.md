[EN](REN.md)
# Cambia el nombre de un valor

## Definición
* Tipo: Copia
* Identificador de tipo: REN
* Descripción: Cambia el nombre de un valor
* Número de parámetros: 1
* Tipos de datos aceptados de los parametros:
  * BOOLEAN
  * DATE
  * DATETIME
  * FLOAT
  * INTEGER
  * STRING
  * TIME
  * CONTEXT
  * ARRAY
* Atributos:
  * type: Siempre REN
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
		"type": "REN",
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

Requisito: Cambiar el valor de `original` en `nuevo`.

Estructura
```json
	{
		"name": "CAMBIANDO_NOMBRE",
		"type": "REN",
		"message": "cambiando nombre de {0}",
		"outputName": "nuevo",
		"parameters": [
			"original"
		],
		"methods": [
			"PUT"
		]
	}
```
