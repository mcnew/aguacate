[EN](END_TRANSACTION.md)
# Termina una transacción SQL.

## Definición
* Tipo: Termina una transacción SQL.
* Identificador de tipo: END_TRANSACTION
* Descripción: Inicia y compromete (commit) una transacción SQL.
* Atributos:
  * type: Siempre END_TRANSACTION
  * name: Nombre de la operación
  * message: El mensaje de la operación
  * methods: Métodos en los que aplica la operación.

Estructura
```json
	{
		"name": "...",
		"type": "END_TRANSACTION",
		"message": "...",
		"methods": [
			"..."
		]
	}
```
## Ejemplo

Requisito: Finalizar la transacción

Estructura
```json
	{
		"name": "FINALIZA_TRANSACCION",
		"type": "END_TRANSACTION",
		"message": "Finalizando la transacción",
		"methods": [
			"PUT"
		]
	}
```
