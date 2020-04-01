[EN](README.md)
# Archivo de configuración de servicio
En este archivo se definen los campos de entrada/salida que conforman el servicio, asi como las validaciones requeridas para el almacenamiento de la información.

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
