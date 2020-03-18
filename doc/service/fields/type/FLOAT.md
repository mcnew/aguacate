[ES](FLOAT-ES.md)
# Floating Point type

## Definition
* Type: Floating point
* Type Identifier: FLOAT
* Description: Parse and validate an floating point value (with or without sign)
* Attributes:
  * type: always FLOAT
  * minval: The minimum value of the field.
  * maxval: The maximum value of the field.
  * input: Describe the inputs.
  * output: List the output methods.

Structure
```json
	"flt": {
		"type": "FLOAT",
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

Requirement: Given a field called id, which accepts floating point values between 0.01 and 10,000.00.
This field is required when the detail of an element is required (GET), but not when it is the list of elements (GET0).
In both cases it is recovered as part of the information.

Structure
```json
	"amount": {
		"type": "FLOAT",
		"minval": "0.01",
		"maxval": "10000.00",
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

Accepted values: 1.00, 59.56 or 2724.78

Scenarios:

If __amount__ is 21.02:
* As JSON body:
```json
	{
		"amount": "21.02"
	}
```
