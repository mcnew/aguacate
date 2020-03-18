# Structure type

## Definition
* Type: Structure
* Type Identifier: STRUCTURE
* Description: Parse and validate an integer value (with or without sign)
* Attributes:
  * type: always STRUCTURE
  * data: The minimum value of the field.
  * input: Describe the inputs.
  * output: List the output methods.

Structure
```json
	"structure": {
		"type": "STRUCTURE",
		"data": {
			"field1": {
			},
			"field2": {
			}
		},
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

## Example

Requirement: 

Structure
```json
	"profile": {
		"type": "STRUCTURE",
		"data": {
			"id": {
				"type": "INTEGER",
				"minval": "1",
				"maxval": "2147483647",
				"input": {
					"PUT": {
						"mandatory": true
					},
					"PATCH": {
						"mandatory": false
					}
				},
				"output": [
					"GET"
				]
			},
			"name": {
				"type": "STRING",
				"minlen": "5",
				"maxlen": "20",
				"regex": "^[-a-zA-Z]+$",
				"input": {
				},
				"output": [
					"GET",
					"GET0"
				]
			}
		},
		"input": {
			"PUT": {
				"mandatory": true
			},
			"PATCH": {
				"mandatory": false
			}
		},
		"output": [
			"GET",
			"GET0"
		]
	}
```

Scenarios:

If id is 12 and name is iota:
* As JSON body:
```json
	{
		"profile": {
			"id": 12,
			"name": "iota"
		}
	}
```
