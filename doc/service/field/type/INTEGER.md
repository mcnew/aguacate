# Integer type

## Definition
* Type: Integer
* Type Identifier: INTEGER
* Description: Parse and validate an integer value (with or without sign)
* Attributes:
  * type: always INTEGER
  * minval: The minimum value of the field.
  * maxval: The maximum value of the field.
  * input: Describe the inputs.
  * output: List the output methods.

Structure
```json
	"int": {
		"type": "INTEGER",
		"minval": "...",
		"maxval": "...",
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

Requirement: Given a field called id, which accepts integer values between 1 and 2,147,483,647.
This field is required when the detail of an element is required (GET), but not when it is the list of elements (GET0).
In both cases it is recovered as part of the information.

Structure
```json
	"id": {
		"type": "INTEGER",
		"minval": "1",
		"maxval": "2147483647",
		"input": {
			"GET": {
				"mandatory": true
			}
		},
		"output": [
			"GET",
			"GET0"
		]
	}
```

Accepted values: 1, 99 or 2147483647

Scenarios:

If id is 21:
* As part of URL:
```text
  http://localhost:8080/service/21
```
* As JSON body:
```json
	{
		"id": "21"
	}
```
