---
layout: default
language: 'es-es'
version: '3.4'
title: 'Phalcon\Mvc\Micro\LazyLoader'
---
# Class **Phalcon\Mvc\Micro\LazyLoader**

<a href="https://github.com/phalcon/cphalcon/tree/v3.4.0/phalcon/mvc/micro/lazyloader.zep" class="btn btn-default btn-sm">Source on GitHub</a>

Lazy-Load of handlers for Mvc\Micro using auto-loading


## Methods
public  **getDefinition** ()

...


public  **__construct** (*mixed* $definition)

Phalcon\Mvc\Micro\LazyLoader constructor



public *mixed* **__call** (*string* $method, *array* $arguments)

Initializes the internal handler, calling functions on it



public *mixed* **callMethod** (*string* $method, *array* $arguments, [[Phalcon\Mvc\Model\BinderInterface](/3.4/en/api/Phalcon_Mvc_Model_BinderInterface) $modelBinder])

Calling __call method



