[ES](README-ES.md)
# Fields Section
This section defines the input and output fields of the service. It can consist of one or several input/output fields.
The field names are the key and the definition is the value inside the `fields` object.

## Structure
```json
{
	"fields": {
		"...": {
			"type": "...",
			"input": {
				"...": {
					"mandatory": true
				}
			},
			"output": [
				"..."
			]
		}
	}
}
```

The required attributes and structure vary depending on the type. The field types that can be used are:
* [ARRAY](type/ARRAY.md)
* [BOOLEAN](type/BOOLEAN.md)
* [DATE](type/DATE.md)
* [DATETIME](type/DATETIME.md)
* DYNAMIC_DATE
* [FLOAT](type/FLOAT.md)
* [INTEGER](type/INTEGER.md)
* [STRING](type/STRING.md)
* [STRUCTURE](type/STRUCTURE.md)
* STRUCTURE_ARRAY
* [TIME](type/TIME.md)

## Example
```json
	"fields": {
		"id": {
			"type": "INTEGER",
			"minval": "1",
			"maxval": "2147483647",
			"input": {
				"GET": {
					"mandatory": true
				},
				"PATCH": {
					"mandatory": true
				}
			},
			"output": [
				"GET",
				"GET0"
			]
		},
		"name": {
			"type": "STRING",
			"minlen": "2",
			"maxlen": "10",
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
	}
```
