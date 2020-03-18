# Tipo booleano

## Definición
* Tipo: Boolean
* Identificador de tipo: BOOLEAN
* Descripción: Analiza y valida un valor booleano
* Attributes:
  * type: Siempre BOOLEAN
  * input: Describre los metodos en los que se requiere.
  * output: Lista los metodos en que es salida.

Estructura
```json
	"bool": {
		"type": "BOOLEAN",
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

Requisito: Dado un campo llamado __flag__, que acepta valores booleanos.

Structure
```json
	"flag": {
		"type": "BOOLEAN",
		"input": {
			"GET": {
				"mandatory": true
			}
		},
		"output": [
			"GET"
		]
	}
```

Valores aceptados: true or "false"

Escenarios:

Si __flag__ es true:
* As JSON body:
```json
	{
		"flag": "true"
	}
```
