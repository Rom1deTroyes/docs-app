---
layout: default
language: 'ja-jp'
version: '3.4'
title: 'Phalcon\Annotations\Reflection'
---

# Class **Phalcon\Annotations\Reflection**

<a href="https://github.com/phalcon/cphalcon/tree/v3.4.0/phalcon/annotations/reflection.zep" class="btn btn-default btn-sm">GitHub上のソース</a>

オブジェクト指向の方法で、アノテーションのリフレクションを操作できます。

```php
<?php

use Phalcon\Annotations\Reader;
use Phalcon\Annotations\Reflection;

// クラスのアノテーションのパース
$reader = new Reader();
$parsing = $reader->parse("MyComponent");

// リフレクションの作成
$reflection = new Reflection($parsing);

// クラスのdocblockのアノテーションを取得
$classAnnotations = $reflection->getClassAnnotations();

```

## メソッド

public **__construct** ([*array* $reflectionData])

Phalcon\Annotations\Reflection constructor

public **getClassAnnotations** ()

そのクラスのdocblockで見つかったアノテーションを返します。

public **getMethodsAnnotations** ()

そのメソッドのdocblockで見つかったアノテーションを返します。

public **getPropertiesAnnotations** ()

そのプロパティのdocblockで見つかったアノテーションを返します。

public *array* **getReflectionData** ()

リフレクションを構成する際に使用する中間定義をそのままパースして返します。

public static *array data* **__set_state** (*mixed* $data)

Restores the state of a Phalcon\Annotations\Reflection variable export