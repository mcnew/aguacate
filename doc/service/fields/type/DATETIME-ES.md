[EN](DATETIME.md)
# Tipo fecha con hora

## Definición
* Tipo: Fecha con hora
* Identificador de tipo: DATETIME
* Descripción: Analiza y valida un valor fecha con hora y zona horaria
* Atributos:
  * type: Siempre DATETIME
  * minval: El valor mínimo del campo.
  * maxval: El valor máximo del campo.
  * input: Describre los metodos en los que se requiere.
  * output: Lista los metodos en que es salida.

Estructura
```json
	"date": {
		"type": "DATETIME",
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
  * el caracter T como separador
  * 2 digitos hora en formato 24 horas
  * el caracter dos puntos (:) como separador
  * 2 digitos minuto
  * el caracter dos puntos (:) como separador
  * 2 digitos segundo
  * el caracter punto (.) como separador
  * 3 digitos milesimas de segundo

  Ejemplos:
  ```text
	2020-02-14T13:43:51.948
	2017-07-29T05:21:38.175
  ```
* Formato de entrada-salida:
  * 4 digitos del año
  * el caracter guion (-) como separador
  * 2 digitos mes
  * el caracter guion (-) como separador
  * 2 digitos dia
  * el caracter T como separador
  * 2 digitos hora en formato 24 horas
  * el caracter dos puntos (:) como separador
  * 2 digitos minuto
  * el caracter dos puntos (:) como separador
  * 2 digitos segundo
  * el caracter punto (.) como separador
  * 3 digitos milesimas de segundo

  Ejemplos:
  ```text
	2002-01-01T00:15:25.456Z
	2015-12-21T23:55:15.758+01:00
  ```

## Ejemplo

Requisito: Se requiere enviar/recibir una fecha __date__ entre 1 de enero del 2000 y el 31 de diciembre del 2019

Estructura
```json
	"timestamp": {
		"type": "DATETIME",
		"minval": "2000-01-01T00:00:00.000",
		"maxval": "2020-12-31T59:59:59.999",
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

Si __date__ tiene el valor de 25 de julio del 2015 a las 10:33PM en Mexico en horario normal (+6):
* Como cuerpo de un JSON:
```json
	{
		"date": "2015-07-25T22:05:33.546+00:06"
	}
```
