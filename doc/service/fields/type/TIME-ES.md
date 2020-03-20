[EN](TIME.md)
# Tipo hora con minutos

## Definición
* Tipo: hora con minutos
* Identificador de tipo: TIME
* Description: Analiza y valida un valor que define hora, minutos y zona horaria
* Atributos:
  * type: Siempre TIME
  * minval: El valor mínimo del campo.
  * maxval: El valor máximo del campo.
  * input: Describre los metodos en los que se requiere.
  * output: Lista los metodos en que es salida.

Estructura
```json
	"time": {
		"type": "TIME",
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
  * 2 digitos hora en formato 24 horas
  * el caracter dos puntos (:) como separador
  * 2 digitos minuto

  Ejemplos:
  ```text
	11:43
	22:25
  ```
* Formato de entrada-salida:
  * 2 digitos hora
  * el caracter dos puntos (:) como separador
  * 2 digitos minuto
  * zona horaria

  Ejemplos:
  ```text
	11:43+05:00
	22:25Z
	22:25-01:00
  ```

## Ejemplo

Requisito: Se requiere enviar/recibir una hora listado de identificadores con valores enteros que va del 1 al 2,147,483,647.
Con el nombre de atributo __ids__

Estructura
```json
	"start": {
		"type": "TIME",
		"minval": "10:00",
		"maxval": "15:00",
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

Si __start__ tiene el valor de 10:00 en Mexico en horario normal (+6):
* Como cuerpo de un JSON:
```json
	{
		"start": "10:00+06:00"
	}
```
