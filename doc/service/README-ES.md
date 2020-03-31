[EN](README.md)
# Archivo de configuración de servicio

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
	},
	"validations": [
	],
	"sentences": [
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
- primary: Nombre de la llave primaria, actualmente solo soporta 1 elemento.
- datasource: El nombre de la fuente de datos (see datasource)
- fields: Objeto con la definición de los campos de entrada/salida
- validations: Listado de validaciones adicionales a ejecutar.
- sentences: Listado de sentencias para el almacenamiento de la información.