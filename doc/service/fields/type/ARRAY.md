[EN](ARRAY.md)
# Array type

## Definition
* Type: array
* Type identifier: ARRAY
* Description: Analyze and validate an array of elements of the same type.
* Attributes:
  * type: Always ARRAY
  * data: Definition of the type of inner elements.
  * unique: Indicates when the elements in the array must be unique.
  * input: Describe the methods in which it is required
  * output: List of the methods in which it is part of the output.

Structure
```json
	"array": {
		"type": "ARRAY",
		"unique": false,
		"data": {
			"type": "...",
			"...": "..."
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

Requirement: It is required to send/receive a list of identifiers with integer values from 1 to 2,147,483,647.
With the attribute name __ids__

Structure
```json
	"ids": {
		"type": "ARRAY",
		"unique": true,
		"data": {
			"type": "INTEGER",
			"minval": "1",
			"maxval": "2147483647"
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

If __ids__ is the list of elements 1,5,10:
* As a JSON body:
```json
	{
		"ids": [
			1,
			5,
			10
		]
	}
```
