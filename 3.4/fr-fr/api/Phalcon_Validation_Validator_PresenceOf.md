---
layout: default
language: 'fr-fr'
version: '3.4'
title: 'Phalcon\Validation\Validator\PresenceOf'
---

# Class **Phalcon\Validation\Validator\PresenceOf**

*extends* abstract class [Phalcon\Validation\Validator](/3.4/en/api/Phalcon_Validation_Validator)

*implements* [Phalcon\Validation\ValidatorInterface](/3.4/en/api/Phalcon_Validation_ValidatorInterface)

<a href="https://github.com/phalcon/cphalcon/tree/v3.4.0/phalcon/validation/validator/presenceof.zep" class="btn btn-default btn-sm">Source on GitHub</a>

Validates that a value is not null or empty string

```php
<?php

use Phalcon\Validation;
use Phalcon\Validation\Validator\PresenceOf;

$validator = new Validation();

$validator->add(
    "name",
    new PresenceOf(
        [
            "message" => "The name is required",
        ]
    )
);

$validator->add(
    [
        "name",
        "email",
    ],
    new PresenceOf(
        [
            "message" => [
                "name"  => "The name is required",
                "email" => "The email is required",
            ],
        ]
    )
);

```

## Methods

public **validate** ([Phalcon\Validation](/3.4/en/api/Phalcon_Validation) $validation, *mixed* $field)

Executes the validation

public **__construct** ([*array* $options]) inherited from [Phalcon\Validation\Validator](/3.4/en/api/Phalcon_Validation_Validator)

Phalcon\Validation\Validator constructor

public **isSetOption** (*mixed* $key) inherited from [Phalcon\Validation\Validator](/3.4/en/api/Phalcon_Validation_Validator)

Checks if an option has been defined

public **hasOption** (*mixed* $key) inherited from [Phalcon\Validation\Validator](/3.4/en/api/Phalcon_Validation_Validator)

Checks if an option is defined

public **getOption** (*mixed* $key, [*mixed* $defaultValue]) inherited from [Phalcon\Validation\Validator](/3.4/en/api/Phalcon_Validation_Validator)

Returns an option in the validator's options Returns null if the option hasn't set

public **setOption** (*mixed* $key, *mixed* $value) inherited from [Phalcon\Validation\Validator](/3.4/en/api/Phalcon_Validation_Validator)

Sets an option in the validator

protected **prepareLabel** ([Phalcon\Validation](/3.4/en/api/Phalcon_Validation) $validation, *mixed* $field) inherited from [Phalcon\Validation\Validator](/3.4/en/api/Phalcon_Validation_Validator)

Prepares a label for the field.

protected **prepareMessage** ([Phalcon\Validation](/3.4/en/api/Phalcon_Validation) $validation, *mixed* $field, *mixed* $type, [*mixed* $option]) inherited from [Phalcon\Validation\Validator](/3.4/en/api/Phalcon_Validation_Validator)

Prepares a validation message.

protected **prepareCode** (*mixed* $field) inherited from [Phalcon\Validation\Validator](/3.4/en/api/Phalcon_Validation_Validator)

Prepares a validation code.