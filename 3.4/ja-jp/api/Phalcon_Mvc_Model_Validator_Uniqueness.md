---
layout: default
language: 'ja-jp'
version: '3.4'
title: 'Phalcon\Mvc\Model\Validator\Uniqueness'
---

# Class **Phalcon\Mvc\Model\Validator\Uniqueness**

*extends* abstract class [Phalcon\Mvc\Model\Validator](/3.4/en/api/Phalcon_Mvc_Model_Validator)

*implements* [Phalcon\Mvc\Model\ValidatorInterface](/3.4/en/api/Phalcon_Mvc_Model_ValidatorInterface)

<a href="https://github.com/phalcon/cphalcon/tree/v3.4.0/phalcon/mvc/model/validator/uniqueness.zep" class="btn btn-default btn-sm">Source on GitHub</a>

Validates that a field or a combination of a set of fields are not present more than once in the existing records of the related table

This validator is only for use with Phalcon\Mvc\Collection. If you are using Phalcon\Mvc\Model, please use the validators provided by Phalcon\Validation.

```php
<?php

use Phalcon\Mvc\Collection;
use Phalcon\Mvc\Model\Validator\Uniqueness;

class Subscriptors extends Collection
{
    public function validation()
    {
        $this->validate(
            new Uniqueness(
                [
                    "field"   => "email",
                    "message" => "Value of field 'email' is already present in another record",
                ]
            )
        );

        if ($this->validationHasFailed() === true) {
            return false;
        }
    }
}

```

## Methods

public **validate** ([Phalcon\Mvc\EntityInterface](/3.4/en/api/Phalcon_Mvc_EntityInterface) $record)

Executes the validator

public **__construct** (*array* $options) inherited from [Phalcon\Mvc\Model\Validator](/3.4/en/api/Phalcon_Mvc_Model_Validator)

Phalcon\Mvc\Model\Validator constructor

protected **appendMessage** (*string* $message, [*string* | *array* $field], [*string* $type]) inherited from [Phalcon\Mvc\Model\Validator](/3.4/en/api/Phalcon_Mvc_Model_Validator)

Appends a message to the validator

public **getMessages** () inherited from [Phalcon\Mvc\Model\Validator](/3.4/en/api/Phalcon_Mvc_Model_Validator)

Returns messages generated by the validator

public *array* **getOptions** () inherited from [Phalcon\Mvc\Model\Validator](/3.4/en/api/Phalcon_Mvc_Model_Validator)

Returns all the options from the validator

public **getOption** (*mixed* $option, [*mixed* $defaultValue]) inherited from [Phalcon\Mvc\Model\Validator](/3.4/en/api/Phalcon_Mvc_Model_Validator)

Returns an option

public **isSetOption** (*mixed* $option) inherited from [Phalcon\Mvc\Model\Validator](/3.4/en/api/Phalcon_Mvc_Model_Validator)

Check whether an option has been defined in the validator options