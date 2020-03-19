[EN](STRUCTURE.md)
# Tipo esructura

## Definición
* Tipo: Estructura (Objeto)
* Identificador de tipo: STRUCTURE
* Description: Analiza y valida un grupo de elementos, que representan un objeto
* Atributos:
  * type: Siempre STRUCTURE
  * data: Definición de los elementos que conforman el objeto.
  * input: Describre los metodos en los que se requiere.
  * output: Lista los metodos en que es salida.

Estructura
```json
	"structure": {
		"type": "STRUCTURE",
		"data": {
			"field1": {
			},
			"field2": {
			}
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

Requisito: Se requiere enviar/recibir un objeto con dos atributos __id__, entero que va del 1 al 2,147,483,647.
y __name__, una cadena que debe cumplir con la expresion regular ^[-a-zA-Z]+$ y una longitud de entre 5 y 20.

Estructura
```json
	"profile": {
		"type": "STRUCTURE",
		"data": {
			"id": {
				"type": "INTEGER",
				"minval": "1",
				"maxval": "2147483647",
				"input": {
					"PUT": {
						"mandatory": true
					},
					"PATCH": {
						"mandatory": false
					}
				},
				"output": [
					"GET"
				]
			},
			"name": {
				"type": "STRING",
				"minlen": "5",
				"maxlen": "20",
				"regex": "^[-a-zA-Z]+$",
				"input": {
				},
				"output": [
					"GET",
					"GET0"
				]
			}
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

Si __id__ es 12 y __name__ es iota:
* Como cuerpo de un JSON:
```json
	{
		"profile": {
			"id": 12,
			"name": "iota"
		}
	}
```
