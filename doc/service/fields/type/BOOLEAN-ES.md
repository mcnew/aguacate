[EN](BOOLEAN.md)
# Tipo booleano

## Definición
* Tipo: Boolean
* Identificador de tipo: BOOLEAN
* Descripción: Analiza y valida un valor booleano
* Atributos:
  * type: Siempre BOOLEAN
  * input: Describre los métodos en los que se requiere.
  * output: Lista los métodos en que es salida.

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

Estructura
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
* Como cuerpo de un JSON:
```json
	{
		"flag": "true"
	}
```
