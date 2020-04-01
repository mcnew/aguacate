[EN](README.md)
# Archivo de configuración de servicio
En este archivo se definen los campos de entrada/salida que conforman el servicio, asi como las validaciones requeridas para el almacenamiento de la información.

El flujo de es el siguiente:

1. Se validan los parametros de entrada en base a los campos definidos en la sección fields y el verbo http (HTTP method).
2. Se construye un contexto con los valores que pasaron las validaciones basicas.
3. Se ejecutan las validaciones definidas en la sección validations en el orden listado y filtradas el verbo http dado.
4. Se ejecutan las sentencias definidas en la sección validations en el orden listado y filtradas el verbo http dado.

Por ejemplo:

Se tiene un servicio que recibe solo 3 parámetros, beta, epsilon y dseta.

Si embargo, se reciben 7 parámetros, algunos incluso con nombres de variables de uso interno (`alpha`, `gama` y `zeta`)

|recibídos|requeridos|validaciones|sentencias|
|:---:|:---:|:---:|:---:|
|**`alpha`**|||**`alpha`**|
|beta|beta|beta|beta|
|**`gamma`**||**`gamma`**||
|delta||||
|epsilon|epsilon|epsilon||
|dseta|dseta|dseta|dseta|
|||eta|eta|
|**`zeta`**||**`zeta`**|zeta|

## Estructura
```json
{
	"specs": {
		"kind": "configuration",
		"format": "1.0"
	},
	"primary": "id",
	"datasource": "laser",
	"fields": {
		"name": {
			"type": "..."
		}
	},
	"validations": [
		{
			"name": "...",
			"type": "..."
		}
	],
	"sentences": [
		{
			"name": "...",
			"type": "..."
		}
	]
}
```

## Elementos

- specs: Sección que indica la especificación del archivo, actualmente solo se acepta el siguiente valor.
  ```json
  {
  	"kind": "configuration",
  	"format": "1.0"
  }
  ```
- primary: Nombre de la llave primaria, actualmente soporta un solo campo. Y debe ser un elemto existente en fields.
- datasource: El nombre de la fuente de datos (see datasource)
- [fields](fields/README-ES.md): Objeto con la definición de los campos de entrada/salida
- [validations](validations/README-ES.md): Listado de validaciones adicionales a ejecutar.
- [sentences](sentences/README-ES.md): Listado de sentencias para el almacenamiento de la información.
