[EN](INTEGER.md)
# Tipo Entero

## Definición
* Tipo: Entero
* Identificador de tipo: INTEGER
* Descripción: Analiza y valida un valor entero (con o sin signo)
* Atributos:
  * type: Siempre INTEGER
  * minval: El valor mínimo del campo.
  * maxval: El valor máximo del campo.
  * input: Describre los metodos en los que se requiere.
  * output: Lista los metodos en que es salida.

Estructura
```json
	"int": {
		"type": "INTEGER",
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
  Los números enteros pueden estar entre comillas, es decir cadenas.

  Ejemplos:
  ```text
	"8426"
	"-76094"
  ```
* Formato de entrada-salida:
  Los números enteros pueden estar entre comillas, es decir cadenas o número json.

  Ejemplos:
  ```text
	"83753"
	-654
	"1"
  ```

## Ejemplo

Requisito: Dado un campo __id__, el cual acepta valores enteros 1 y 2,147,483,647.
Este campo se requiere cuando se solicita el detalle (GET), pero no es requerido cuando se solicita el listado de elementos (GET0).
En ambos casos es recuperado como parte de la información.

Estructura
```json
	"id": {
		"type": "INTEGER",
		"minval": "1",
		"maxval": "2147483647",
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

Valores aceptados: 1, 99 o 2147483647

Escenarios:

Si __id__ es 21:
* Como parte de una URL:
```text
  http://localhost:8080/service/21
```
* Como cuerpo de un JSON:
```json
	{
		"id": "21"
	}
```
