[EN](SQL_INSERT.md)
# Ejecuta una sentencia insert SQL.

## Definición
* Tipo: Ejecuta una sentencia insert SQL.
* Identificador de tipo: SQL_INSERT
* Descripción: Ejecuta una sentencia insert SQL.
* Atributos:
  * type: Siempre SQL_INSERT
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
		"type": "SQL_INSERT",
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

Requisito: Inserta un registro en la tabla table1, dados los campos alpha y beta.

Estructura
```json
	{
		"name": "INICIA_TRANSACCION",
		"type": "SQL_INSERT",
		"message": "Iniciando la transacción",
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
