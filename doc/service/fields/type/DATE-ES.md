[EN](DATE.md)
# Tipo fecha

## Definición
* Tipo: Fecha
* Identificador de tipo: DATE
* Description: Analiza y valida un valor fecha con zona horaria
* Atributos:
  * type: Siempre DATE
  * minval: El valor mínimo del campo.
  * maxval: El valor máximo del campo.
  * input: Describre los metodos en los que se requiere.
  * output: Lista los metodos en que es salida.

Estructura
```json
	"date": {
		"type": "DATE",
		"minval": "...",
		"maxval": "...",
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
## Formato:
* Formato configuración:
  * 4 digitos del año
  * el caracter guion (-) como separador
  * 2 digitos mes
  * el caracter guion (-) como separador
  * 2 digitos dia

  Ejemplos:
  ```text
	2002-01-01
	2015-12-21
  ```
* Formato de entrada-salida:
  * 4 digitos del año
  * el caracter guion (-) como separador
  * 2 digitos mes
  * el caracter guion (-) como separador
  * 2 digitos dia
  * zona horaria

  Ejemplos:
  ```text
	2015-07-21+05:00
	2020-03-19Z
	2004-05-22-01:00
  ```

## Ejemplo

Requisito: Se requiere enviar/recibir una fecha __date__ entre 1 de enero del 2000 y el 31 de diciembre del 2019

Estructura
```json
	"date": {
		"type": "DATE",
		"minval": "2000-01-01",
		"maxval": "2019-12-31",
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

Si __date__ tiene el valor de 25 de julio del 2015 en Mexico en horario normal (+6):
* Como cuerpo de un JSON:
```json
	{
		"date": "2015-07-25+00:06"
	}
```
