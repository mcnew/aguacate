[EN](CONTEXT.md)
# Crea un nuevo contexto (objeto)

## Definición
* Tipo: Crea un nuevo contexto (objeto)
* Identificador de tipo: CONTEXT
* Descripción: Crea un nuevo contexto (objeto) vacio.
* Atributos:
  * type: Siempre CONTEXT
  * name: Nombre de la operación
  * message: El mensaje de la operación
  * outputName: Nombre destino del resultado
  * outputContext: (_Opcional_) Contexto donde se almacenará el resultado
  * methods: Métodos en los que aplica la operación.

Estructura
```json
	{
		"name": "...",
		"type": "CONTEXT",
		"message": "...",
		"outputName": "...",
		"outputContext": [
			"..."
		],
		"methods": [
			"..."
		]
	}
```
## Ejemplo

Requisito: Crear un nuevo objeto con el nombre de `iota`.

Estructura
```json
	{
		"name": "CREACION_IOTA",
		"type": "CONTEXT",
		"message": "Creando iota",
		"outputName": "iota",
		"methods": [
			"PUT"
		]
	}
```
