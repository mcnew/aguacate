[EN](ARRAY.md)
# Tipo arreglo

## Definición
* Tipo: arreglo
* Identificador de tipo: ARRAY
* Descripción: Analiza y valida un arreglo de elementos del mismo tipo.
* Atributos:
  * type: Siempre ARRAY
  * data: Definición del tipo de los elementos que conforman el arreglo.
  * unique: Indica si los elementos deben ser únicos.
  * input: Describre los metodos en los que se requiere.
  * output: Lista los metodos en que es salida.

Estructura
```json
	"array": {
		"type": "ARRAY",
		"unique": false,
		"data": {
			"type": "...",
			"...": "..."
		},
		"input": {
			"...": {
				"mandatory": true
			}
		},
		"output": [
			"..."
		]
	}
```

## Ejemplo

Requisito: Se requiere enviar/recibir un listado de identificadores con valores enteros que va del 1 al 2,147,483,647.
Con el nombre de atributo __ids__

Estructura
```json
	"ids": {
		"type": "ARRAY",
		"unique": true,
		"data": {
			"type": "INTEGER",
			"minval": "1",
			"maxval": "2147483647"
		},
		"input": {
			"PUT": {
				"mandatory": true
			},
			"PATCH": {
				"mandatory": false
			}
		},
		"output": [
			"GET",
			"GET0"
		]
	}
```

Escenarios:

Si __ids__ tiene la lista de elementos 1,5,10:
* Como cuerpo de un JSON:
```json
	{
		"ids": [
			1,
			5,
			10
		]
	}
```
