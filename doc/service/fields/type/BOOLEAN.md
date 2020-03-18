# Boolean type

## Definition
* Type: Boolean
* Type Identifier: BOOLEAN
* Description: Parse and validate a boolean value
* Attributes:
  * type: Always BOOLEAN
  * input: Describe the inputs.
  * output: List the output methods.

Structure
```json
	"bool": {
		"type": "BOOLEAN",
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

Requirement: Given a field called flag, which accepts boolean values.

Structure
```json
	"flag": {
		"type": "BOOLEAN",
		"input": {
			"GET": {
				"mandatory": true
			}
		},
		"output": [
			"GET"
		]
	}
```

Accepted values: true or "false"

Scenarios:

If flag is true:
* As JSON body:
```json
	{
		"flag": "true"
	}
```
