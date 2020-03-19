[EN](FLOAT.md)
# Tipo punto flotante

## Definición
* Tipo: Punto flotante
* Identificador de tipo: FLOAT
* Descripción: Analiza y valida un valor punto flotante (con o sin signo)
* Atributos:
  * type: Siempre FLOAT
  * minval: El valor mínimo del campo.
  * maxval: El valor máximo del campo.
  * input: Describre los metodos en los que se requiere.
  * output: Lista los metodos en que es salida.

Estructura
```json
	"flt": {
		"type": "FLOAT",
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
  Los números punto flotante pueden ser representado como cadenas o como flotantes json.
  Es preferible  los numero en cadena, para evitar cualquier problema con el redondeo de punto flotante nativo.
  Ejemplos:
  ```text
	1.01
	"22.56"
	"-8453.893"
	-.1
  ```
* Formato de entrada-salida:
  Los números punto flotante pueden ser representado como cadenas o como flotantes json.
  Es preferible enviar/recibir los numero en cadena, para evitar cualquier problema con el redondeo de punto flotante nativo.

  Ejemplos:
  ```text
	"-231.23"
	11
	+.02
  ```

## Ejemplo

Requirement: 
Dado un campo llamado __amount__ que acepta valores de punto flotante entre 0.01 and 10,000.00.
Este campo es requerido cuando el solicita el detalle (GET), pero no cuando se solicita el listado de elementos (GET0).
En ambos casos se recupera como parte de la información.

Estructura
```json
	"amount": {
		"type": "FLOAT",
		"minval": "0.01",
		"maxval": "10000.00",
		"input": {
			"GET": {
				"mandatory": true
			}
		},
		"output": [
			"GET",
			"GET0"
		]
	}
```

Valores aceptados: 1.00, 59.56 o 2724.78

Escenarios:

Si __amount__ es 21.02:
* Como cuerpo de un JSON:
```json
	{
		"amount": "21.02"
	}
```
