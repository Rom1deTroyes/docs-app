---
layout: default
language: 'uk-ua'
version: '3.4'
title: 'Phalcon\Mvc\Model\Validator\Regex'
---

# Class **Phalcon\Mvc\Model\Validator\Regex**

*extends* abstract class [Phalcon\Mvc\Model\Validator](/3.4/en/api/Phalcon_Mvc_Model_Validator)

*implements* [Phalcon\Mvc\Model\ValidatorInterface](/3.4/en/api/Phalcon_Mvc_Model_ValidatorInterface)

<a href="https://github.com/phalcon/cphalcon/tree/v3.4.0/phalcon/mvc/model/validator/regex.zep" class="btn btn-default btn-sm">Source on GitHub</a>

Allows validate if the value of a field matches a regular expression

This validator is only for use with Phalcon\Mvc\Collection. If you are using Phalcon\Mvc\Model, please use the validators provided by Phalcon\Validation.

```php
<?php

use Phalcon\Mvc\Model\Validator\Regex as RegexValidator;

class Subscriptors extends \Phalcon\Mvc\Collection
{
    public function validation()
    {
        $this->validate(
            new RegexValidator(
                [
                    "field"   => "created_at",
                    "pattern" => "/^[0-9]{4}[-\/](0[1-9]|1[12])[-\/](0[1-9]|[12][0-9]|3[01])/",
                ]
            )
        );

        if ($this->validationHasFailed() == true) {
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