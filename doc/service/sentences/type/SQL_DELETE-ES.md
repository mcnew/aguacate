[EN](SQL_DELETE.md)
# Ejecuta una sentencia delete SQL.

## Definición
* Tipo: Ejecuta una sentencia delete SQL.
* Identificador de tipo: SQL_DELETE
* Descripción: Ejecuta una sentencia delete SQL.
* Atributos:
  * type: Siempre SQL_DELETE
  * name: Nombre de la operación
  * sql: La sentencia SQL 
  * required: Parametros requeridos.
  * optional: Parametros opcionales.
  * message: El mensaje de la operación
  * methods: Métodos en los que aplica la operación.

Estructura
```json
	{
		"name": "...",
		"type": "SQL_DELETE",
		"message": "...",
		"sql": "...",
		"required": [
			"..."
		],
		"optional": [
			"..."
		],
		"methods": [
			"..."
		]
	}
```
## Ejemplo

Requisito: Borrar los registros cuyo valor de `name` sea el indicado por la variable `name` de la tabla `table1`.

Estructura
```json
	{
		"name": "BORRAR_REGISTRO",
		"type": "SQL_DELETE",
		"message": "Borrando registro {0}",
		"sql": "DELETE table1 WHERE name = ?",
		"required": [
			"name"
		],
		"optional": [
		],
		"methods": [
			"PUT"
		]
	}
```
