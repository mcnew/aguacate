[EN](SHA256.md)
# Calculador de "sha-256"

## Definición
* Tipo: Calculador de "sha-256"
* Identificador de tipo: SHA256
* Descripción: Calcula el hash sha-256 de un binario.
* Número de parámetros: 1
* Tipos de datos aceptados de los parametros:
  * BINARY
* Atributos:
  * type: Siempre SHA256
  * name: Nombre de la operación
  * message: El mensaje de la operación
  * outputName: Nombre destino del resultado
  * outputContext: (_Opcional_) Contexto donde se almacenará el resultado
  * parameters: Parametros
  * methods: Métodos en los que aplica la operación.

Estructura
```json
	{
		"name": "...",
		"type": "SHA256",
		"message": "...",
		"outputName": "...",
		"outputContext": [
			"..."
		],
		"parameters": [
			"..."
		],
		"methods": [
			"..."
		]
	}
```
## Ejemplo

Requisito: Calcular el hash sha-256 de `data` de un binario.

Estructura
```json
	{
		"name": "CALCULANDO_HASH",
		"type": "SHA256",
		"message": "calculando hash de data",
		"outputName": "hash",
		"parameters": [
			"data"
		],
		"methods": [
			"POST"
		]
	}
```

Al ejecutarse la operación se crea la variable `hash` cuyo valor sera una cadena de 64 caracteres representan el hash256 en de `data` en hexadecimal
