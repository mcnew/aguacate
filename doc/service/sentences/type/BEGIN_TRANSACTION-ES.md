[EN](BEGIN_TRANSACTION.md)
# Inicia una transacción SQL.

## Definición
* Tipo: Inicia una transacción SQL.
* Identificador de tipo: BEGIN_TRANSACTION
* Descripción: Inicia una transacción SQL.
* Atributos:
  * type: Siempre BEGIN_TRANSACTION
  * name: Nombre de la operación
  * message: El mensaje de la operación
  * methods: Métodos en los que aplica la operación.

Estructura
```json
	{
		"name": "...",
		"type": "BEGIN_TRANSACTION",
		"message": "...",
		"methods": [
			"..."
		]
	}
```
## Ejemplo

Requisito: Iniciar una transacción.

Estructura
```json
	{
		"name": "INICIA_TRANSACCION",
		"type": "BEGIN_TRANSACTION",
		"message": "Iniciando la transacción",
		"methods": [
			"PUT"
		]
	}
```
