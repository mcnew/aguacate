[EN](STRING.md)
# Tipo Cadena

## Definición
* Tipo: Cadena
* Identificador de tipo: STRING
* Descripción: Valida una cadena
* Atributos:
  * type: Siempre STRING
  * minlen: Longitud mínima de la cadena.
  * maxlen: Longitud máxima de la cadena.
  * regex: La expresión regular, para validar la cadena
  * input: Describre los metodos en los que se requiere.
  * output: Lista los metodos en que es salida.

Estructura
```json
	"str": {
		"type": "STRING",
		"minlen": "...",
		"maxlen": "...",
		"regex": "...",
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

Requisito: Dado un campo llamado name que acepta cadenas,
que cumplen con la expresión regular "^ [a-zA-Z] + $" y una longitud mínima de 3 y máxima de 5. 

Estructura
```json
	"name": {
		"type": "STRING",
		"minlen": "3",
		"maxlen": "5",
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
```

Ejemplo de valores aceptados: alpha o beta

Escenarios: 

Si __name__ es alpha:
* Como parte de una URL:
```text
  http://localhost:8080/service/alpha
```
* Como cuerpo de un JSON:
```json
	{
		"name": "alpha"
	}
```
