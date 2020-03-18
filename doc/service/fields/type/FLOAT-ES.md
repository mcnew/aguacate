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

## Ejemplo

Requirement: Given a field called id, which accepts floating point values between 0.01 and 10,000.00.
This field is required when the detail of an element is required (GET), but not when it is the list of elements (GET0).
In both cases it is recovered as part of the information.

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
