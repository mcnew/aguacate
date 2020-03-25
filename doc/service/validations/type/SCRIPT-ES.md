[EN](SCRIPT.md)
# Validador basado en un script

## Definición
* Tipo: Validador basado en un script
* Identificador de tipo: SCRIPT
* Descripción: Valida datos al ejecutar una function de un script
* Número de parámetros: 1..N
* Tipos de datos aceptados de los parametros:
  * BOOLEAN
  * FLOAT
  * INTEGER
  * STRING
* Atributos:
  * type: Siempre SCRIPT
  * name: Nombre de la operación
  * message: El mensaje de la operación
  * outputName: (_Opcional_) Nombre destino del resultado
  * outputContext: (_Opcional_) Contexto donde se almacenará el resultado
  * scriptName: Nombre del script
  * functionName: La sentencia SQL a ejecutar
  * parameters: Parametros
  * methods: Métodos en los que aplica la operación.

Estructura
```json
	{
		"name": "...",
		"type": "SCRIPT",
		"message": "...",
		"outputName": "...",
		"outputContext": [
			"..."
		],
		"functionName": "...",
		"scriptName": "...",
		"parameters": [
			"..."
		],
		"methods": [
			"..."
		]
	}
```
## Ejemplo

Requisito: Validar la información en los campos `original_active`, `description`, `date`, `starTime`, `endTime` y `active`,
ejecutando la función `updateCheckValidation` del script `colores1`.

Estructura
```json
	{
		"name": "VALIDACION_CUSTOM",
		"type": "SCRIPT",
		"message": "Validando datos correctos",
		"scriptName": "colores1",
		"functionName": "updateCheckValidation",
		"parameters": [
			"original_active",
			"description",
			"date",
			"starTime",
			"endTime",
			"active"
		],
		"methods": [
			"PUT"
		]
	}
```
