[ES](DATETIME-ES.md)
# Date-time type

## Definition
* Type: Date-time
* Type identifier: DATETIME
* Description: Analyze and validate a date value with time and time zone.
* Attributes:
  * type: Always DATETIME
  * minval: The minimum value of the field.
  * maxval: The maximum value of the field.
  * input: Describe the methods in which it is required
  * output: List of the methods in which it is part of the output.

Structure
```json
	"date": {
		"type": "DATETIME",
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
## format:
* Configuration format:
  * 4 digits of year
  * the hyphen character (-) as separator
  * 2 digits of month
  * the hyphen character (-) as separator
  * 2 digits of day
  * The T character as separator
  * 2 digits of hour in 24 hours format
  * The colon character (:) as separator
  * 2 digits of minute
  * The colon character (:) as separator
  * 2 digits of seconds
  * The dot character (.) as separator
  * 3 digits of milliseconds

  Example:
  ```text
	2020-02-14T13:43:51.948
	2017-07-29T05:21:38.175
  ```
* Input/Output format:
  * 4 digits of year
  * the hyphen character (-) as separator
  * 2 digits of month
  * the hyphen character (-) as separator
  * 2 digits of day
  * The T character as separator
  * 2 digits of hour in 24 hours format
  * The colon character (:) as separator
  * 2 digits of minute
  * The colon character (:) as separator
  * 2 digits of seconds
  * The dot character (.) as separator
  * 3 digits of milliseconds
  * time zone

  Examples:
  ```text
	2002-01-01T00:15:25.456Z
	2015-12-21T23:55:15.758+01:00
  ```

## Example

Requirement: Send / receive a date __date__ is required between January 1, 2000 and December 31, 2019

Structure
```json
	"timestamp": {
		"type": "DATETIME",
		"minval": "2000-01-01T00:00:00.000",
		"maxval": "2020-12-31T59:59:59.999",
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

If __date__ has the value of July 25, 2015 at 10:33 PM in Mexico (GMT+6):
* As a JSON body:
```json
	{
		"date": "2015-07-25T22:05:33.546+00:06"
	}
```
