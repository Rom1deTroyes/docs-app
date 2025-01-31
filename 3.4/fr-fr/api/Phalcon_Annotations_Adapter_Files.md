---
layout: default
language: 'fr-fr'
version: '3.4'
title: 'Phalcon\Annotations\Adapter\Files'
---

# Class **Phalcon\Annotations\Adapter\Files**

*extends* abstract class [Phalcon\Annotations\Adapter](/3.4/en/api/Phalcon_Annotations_Adapter)

*implements* [Phalcon\Annotations\AdapterInterface](/3.4/en/api/Phalcon_Annotations_AdapterInterface)

<a href="https://github.com/phalcon/cphalcon/tree/v3.4.0/phalcon/annotations/adapter/files.zep" class="btn btn-default btn-sm">Source on GitHub</a>

Stores the parsed annotations in files. This adapter is suitable for production

```php
<?php

use Phalcon\Annotations\Adapter\Files;

$annotations = new Files(
    [
        "annotationsDir" => "app/cache/annotations/",
    ]
);

```

## Methods

public **__construct** ([*array* $options])

Phalcon\Annotations\Adapter\Files constructor

public [Phalcon\Annotations\Reflection](/3.4/en/api/Phalcon_Annotations_Reflection) **read** (*string* $key)

Reads parsed annotations from files

public **write** (*mixed* $key, [Phalcon\Annotations\Reflection](/3.4/en/api/Phalcon_Annotations_Reflection) $data)

Writes parsed annotations to files

public **setReader** ([Phalcon\Annotations\ReaderInterface](/3.4/en/api/Phalcon_Annotations_ReaderInterface) $reader) inherited from [Phalcon\Annotations\Adapter](/3.4/en/api/Phalcon_Annotations_Adapter)

Sets the annotations parser

public **getReader** () inherited from [Phalcon\Annotations\Adapter](/3.4/en/api/Phalcon_Annotations_Adapter)

Returns the annotation reader

public **get** (*string* | *object* $className) inherited from [Phalcon\Annotations\Adapter](/3.4/en/api/Phalcon_Annotations_Adapter)

Parses or retrieves all the annotations found in a class

public **getMethods** (*mixed* $className) inherited from [Phalcon\Annotations\Adapter](/3.4/en/api/Phalcon_Annotations_Adapter)

Returns the annotations found in all the class' methods

public **getMethod** (*mixed* $className, *mixed* $methodName) inherited from [Phalcon\Annotations\Adapter](/3.4/en/api/Phalcon_Annotations_Adapter)

Returns the annotations found in a specific method

public **getProperties** (*mixed* $className) inherited from [Phalcon\Annotations\Adapter](/3.4/en/api/Phalcon_Annotations_Adapter)

Returns the annotations found in all the class' methods

public **getProperty** (*mixed* $className, *mixed* $propertyName) inherited from [Phalcon\Annotations\Adapter](/3.4/en/api/Phalcon_Annotations_Adapter)

Returns the annotations found in a specific property