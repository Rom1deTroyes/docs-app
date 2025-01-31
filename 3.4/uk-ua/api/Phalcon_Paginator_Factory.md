---
layout: default
language: 'uk-ua'
version: '3.4'
title: 'Phalcon\Paginator\Factory'
---

# Class **Phalcon\Paginator\Factory**

*extends* abstract class [Phalcon\Factory](/3.4/en/api/Phalcon_Factory)

*implements* [Phalcon\FactoryInterface](/3.4/en/api/Phalcon_FactoryInterface)

<a href="https://github.com/phalcon/cphalcon/tree/v3.4.0/phalcon/paginator/factory.zep" class="btn btn-default btn-sm">Source on GitHub</a>

Loads Paginator Adapter class using 'adapter' option

```php
<?php

use Phalcon\Paginator\Factory;

/**
 * The `modelsManager` is automatically created when you instantiate your DI
 * container using the `FactoryDefault` class. It returns a 
 * [Phalcon\Mvc\Model\Manager](/3.4/en/api/Phalcon_Mvc_Model_Manager) object
 */

$builder = $this->modelsManager->createBuilder()
                ->columns("id, name")
                ->from("Robots")
                ->orderBy("name");

$options = [
    "builder" => $builder,
    "limit"   => 20,
    "page"    => 1,
    "adapter" => "queryBuilder",
];
$paginator = Factory::load($options);

```

## Methods

public static **load** ([Phalcon\Config](/3.4/en/api/Phalcon_Config) | *array* $config)

protected static **loadClass** (*mixed* $namespace, *mixed* $config) inherited from [Phalcon\Factory](/3.4/en/api/Phalcon_Factory)

...