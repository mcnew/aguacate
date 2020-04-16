[ES](TIME-ES.md)
# Time type

## Definition
* Type: hout with minutes
* Type identifier: TIME
* Description: Analyze and validate a value that defines hour, minute and time zone.
* Attributes:
  * type: Always TIME
  * minval: The minimum value of the field.
  * maxval: The maximum value of the field.
  * input: Describe the methods in which it is required
  * output: List of the methods in which it is part of the output.

Structure
```json
	"time": {
		"type": "TIME",
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
  * 2 digits of hour in 24 hours format
  * The colon character (:) as separator
  * 2 digits of minute

  Examples:
  ```text
	11:43
	22:25
  ```
* Input/Output format:
  * 2 digits of hour in 24 hours format
  * The colon character (:) as separator
  * 2 digits of minute
  * The time zone

  Examples:
  ```text
	11:43+05:00
	22:25Z
	22:25-01:00
  ```

## Example

Requirement: It is required to send/receive an hour between 10:00 AM and 3:00 PM.
With the attribute name __start__

Structure
```json
	"start": {
		"type": "TIME",
		"minval": "10:00",
		"maxval": "15:00",
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

If __start__ is 10:00 in Mexico (+6):
* As a JSON body:
```json
	{
		"start": "10:00+06:00"
	}
```
