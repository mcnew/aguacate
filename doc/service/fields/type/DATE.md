[ES](DATE-ES.md)
# Date type

## Definition
* Type: Date
* Type identifier: DATE
* Descripción: Analyze and validate a date value with time zone
* Attributes:
  * type: Always DATE
  * minval: The minimum value of the field.
  * maxval: The maximum value of the field.
  * input: Describe the methods in which it is required
  * output: List of the methods in which it is part of the output.

Structure
```json
	"date": {
		"type": "DATE",
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
## Format:
* Configuration format:
  * 4 digits of year
  * the hyphen character (-) as separator
  * 2 digits of month
  * the hyphen character (-) as separator
  * 2 digits of day

  Examples:
  ```text
	2002-01-01
	2015-12-21
  ```
* Input/Output format:
  * 4 digits of year
  * the hyphen character (-) as separator
  * 2 digits of month
  * the hyphen character (-) as separator
  * 2 digits of day
  * time zone

  Examples:
  ```text
	2015-07-21+05:00
	2020-03-19Z
	2004-05-22-01:00
  ```

## Example

Requirement: It is required to send/receive a date __date__ between January 1, 2000 and December 31, 2019

Structure
```json
	"date": {
		"type": "DATE",
		"minval": "2000-01-01",
		"maxval": "2019-12-31",
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

If __date__ has the value julio 25, 2015 in Mexico (GTM+6):
* As a JSON body:
```json
	{
		"date": "2015-07-25+00:06"
	}
```
