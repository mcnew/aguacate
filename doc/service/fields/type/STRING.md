# String type

## Definition
* Type: String
* Type Identifier: STRING
* Description: Validate a string value
* Attributes:
  * type: always STRING
  * minlen: The minimum length of the field.
  * maxlen: The maximum length of the field.
  * regex: The regex
  * input: Describe the inputs.
  * output: List the output methods.

Structure
```json
	"name": {
		"type": "STRING",
		"minlen": "...",
		"maxlen": "...",
		"regex": "...",
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

Requirement: Given a field named "name" of type string,
it must comply with the regular expression "^ [a-zA-Z] + $" and have a length between 3 and 5. 

Structure
```json
	"name": {
		"type": "STRING",
		"minlen": "3",
		"maxlen": "5",
		"regex": "^[a-zA-Z]+$",
		"input": {
			"PUT": {
				"mandatory": true
			}
		},
		"output": [
			"GET",
			"GET0"
		]
	}
```

Accepted values: alpha or beta

Scenarios: 

If name is alpha:
* As part of URL:
```text
  http://localhost:8080/service/alpha
```
* As JSON body:
```json
	{
		"name": "alpha"
	}
```
