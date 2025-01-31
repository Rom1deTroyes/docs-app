---
layout: default
language: 'ja-jp'
version: '3.4'
title: 'Phalcon\Annotations\Adapter\Xcache'
---

# Class **Phalcon\Annotations\Adapter\Xcache**

*extends* abstract class [Phalcon\Annotations\Adapter](/3.4/en/api/Phalcon_Annotations_Adapter)

*implements* [Phalcon\Annotations\AdapterInterface](/3.4/en/api/Phalcon_Annotations_AdapterInterface)

<a href="https://github.com/phalcon/cphalcon/tree/v3.4.0/phalcon/annotations/adapter/xcache.zep" class="btn btn-default btn-sm">GitHub上のソース</a>

パースしたアノテーションをXCacheに保存します。 このアダプタはプロダクション向けです。

```php
<?php

$annotations = new \Phalcon\Annotations\Adapter\Xcache();

```

## メソッド

public [Phalcon\Annotations\Reflection](/3.4/en/api/Phalcon_Annotations_Reflection) **read** (*string* $key)

パースしたアノテーションをXCacheから読み込みます。

public **write** (*mixed* $key, [Phalcon\Annotations\Reflection](/3.4/en/api/Phalcon_Annotations_Reflection) $data)

パースしたアノテーションをXCacheに書き込みます。

public **setReader** ([Phalcon\Annotations\ReaderInterface](/3.4/en/api/Phalcon_Annotations_ReaderInterface) $reader) inherited from [Phalcon\Annotations\Adapter](/3.4/en/api/Phalcon_Annotations_Adapter)

アノテーションパーサーを設定します。

public **getReader** () inherited from [Phalcon\Annotations\Adapter](/3.4/en/api/Phalcon_Annotations_Adapter)

アノテーションリーダーを返します。

public **get** (*string* | *object* $className) inherited from [Phalcon\Annotations\Adapter](/3.4/en/api/Phalcon_Annotations_Adapter)

クラス内で見つかったすべてのアノテーションをパースまたは取得します。

public **getMethods** (*mixed* $className) inherited from [Phalcon\Annotations\Adapter](/3.4/en/api/Phalcon_Annotations_Adapter)

そのクラスのすべてのメソッドで見つかったアノテーションを返します。

public **getMethod** (*mixed* $className, *mixed* $methodName) inherited from [Phalcon\Annotations\Adapter](/3.4/en/api/Phalcon_Annotations_Adapter)

そのメソッドで見つかったアノテーションを返します。

public **getProperties** (*mixed* $className) inherited from [Phalcon\Annotations\Adapter](/3.4/en/api/Phalcon_Annotations_Adapter)

そのクラスのすべてのメソッドで見つかったアノテーションを返します。

public **getProperty** (*mixed* $className, *mixed* $propertyName) inherited from [Phalcon\Annotations\Adapter](/3.4/en/api/Phalcon_Annotations_Adapter)

そのプロパティで見つかったアノテーションを返します。