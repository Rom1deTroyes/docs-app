---
layout: default
language: 'ru-ru'
version: '3.4'
title: 'Phalcon\Logger\Item'
---

# Class **Phalcon\Logger\Item**

<a href="https://github.com/phalcon/cphalcon/tree/v3.4.0/phalcon/logger/item.zep" class="btn btn-default btn-sm">Source on GitHub</a>

Represents each item in a logging transaction

## Methods

public **getType** ()

Log type

public **getMessage** ()

Log message

public **getTime** ()

Log timestamp

public **getContext** ()

...

public **__construct** (*string* $message, *integer* $type, [*integer* $time], [*array* $context])

Phalcon\Logger\Item constructor