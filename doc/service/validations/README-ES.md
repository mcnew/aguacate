[EN](README.md)
# Sección Validations
En esta sección se reciben las variables validadas y convertidas a los tipos correspondientes de la sección [fields](../fields/README-ES.md).

Para validar los datos se pueden ejecutar comparaciones entre 2 variables, consultas a base de datos o ejecución de scripts. Si alguna validación falla, se genera una respuesta indicando la falla y un estado http 400.

## Estructura
validaciones:
* [EQ](type/EQ-ES.md)
* [GE](type/GE-ES.md)
* [GT](type/GT-ES.md)
* [LE](type/LE-ES.md)
* [LT](type/LT-ES.md)
* [NE](type/NE-ES.md)
* [NOT_ZERO](type/NOT_ZERO-ES.md)
* [ZERO](type/ZERO-ES.md)

validaciones SQL:

* [SQL_COUNT_NOT_ZERO](type/SQL_COUNT_NOT_ZERO-ES.md)
* [SQL_COUNT_ZERO](type/SQL_COUNT_ZERO-ES.md)

transformación:
* [BASE64_DECODE](type/BASE64_DECODE-ES.md)
* [BASE64_ENCODE](type/BASE64_ENCODE-ES.md)
* [JSON_DECODE](type/JSON_DECODE-ES.md)
* [JSON_ENCODE](type/JSON_ENCODE-ES.md)

manipulación:
* [COPY](type/COPY-ES.md)
* [LITERAL_INTEGER](type/LITERAL_INTEGER-ES.md)
* [LITERAL_STRING](type/LITERAL_STRING-ES.md)
* [REN](type/REN-ES.md)

manipulación SQL:
* [SQL_SELECT_SINGLE](type/SQL_SELECT_SINGLE-ES.md)

calculo:
* [SHA256](type/SHA256-ES.md)

control de flujo:
* [CONDITIONAL](type/CONDITIONAL-ES.md)
* [STRUCTURE_ARRAY_ITERATOR](type/STRUCTURE_ARRAY_ITERATOR-ES.md)

miscelaneo:
* [SCRIPT](type/SCRIPT-ES.md)

## Ejemplo
