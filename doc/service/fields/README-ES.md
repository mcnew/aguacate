[EN](README.md)
# Sección Fields
En esta sección se definen los campos de entrada y salida del servicio. Puede estar formada por 1 o varios campos de entrada/salida. Los nombres de los campos son la llave y la definición el valor dentro del objeto `fields`.

## Estructura
```json
{
	"fields": {
		"...": {
			"type": "...",
			"input": {
				"...": {
					"mandatory": true
				}
			},
			"output": [
				"..."
			]
		}
	}
}
```

Los atributos y estructura requeridos varian dependiendo del tipo. Los tipos de campo que pueden utilizarse son:
* [ARRAY](type/ARRAY-ES.md)
* [BOOLEAN](type/BOOLEAN-ES.md)
* [DATE](type/DATE-ES.md)
* [DATETIME](type/DATETIME-ES.md)
* DYNAMIC_DATE
* [FLOAT](type/FLOAT-ES.md)
* [INTEGER](type/INTEGER-ES.md)
* [STRING](type/STRING-ES.md)
* [STRUCTURE](type/STRUCTURE-ES.md)
* STRUCTURE_ARRAY
* [TIME](type/TIME-ES.md)

## Ejemplo
```json
	"fields": {
		"id": {
			"type": "INTEGER",
			"minval": "1",
			"maxval": "2147483647",
			"input": {
				"GET": {
					"mandatory": true
				},
				"PATCH": {
					"mandatory": true
				}
			},
			"output": [
				"GET",
				"GET0"
			]
		},
		"name": {
			"type": "STRING",
			"minlen": "2",
			"maxlen": "10",
			"regex": "^[a-zA-Z]+$",
			"input": {
				"PUT": {
					"mandatory": true
				}
			},
			"output": [
				"GET",
				"GET0"
			]
		}
	}
```
