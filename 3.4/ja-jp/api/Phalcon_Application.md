---
layout: default
language: 'ja-jp'
version: '3.4'
title: 'Phalcon\Application'
---

# Abstract class **Phalcon\Application**

*extends* abstract class [Phalcon\Di\Injectable](/3.4/en/api/Phalcon_Di_Injectable)

*implements* [Phalcon\Events\EventsAwareInterface](/3.4/en/api/Phalcon_Events_EventsAwareInterface), [Phalcon\Di\InjectionAwareInterface](/3.4/en/api/Phalcon_Di_InjectionAwareInterface)

<a href="https://github.com/phalcon/cphalcon/tree/v3.4.0/phalcon/application.zep" class="btn btn-default btn-sm">GitHub上のソース</a>

Base class for Phalcon\Cli\Console and Phalcon\Mvc\Application.

## メソッド

public **__construct** ([[Phalcon\DiInterface](/3.4/en/api/Phalcon_DiInterface) $dependencyInjector])

Phalcon\Application Constructor

public **setEventsManager** ([Phalcon\Events\ManagerInterface](/3.4/en/api/Phalcon_Events_ManagerInterface) $eventsManager)

イベントマネージャーをセットします

public **getEventsManager** ()

内部イベントマネージャーを返します

public **registerModules** (*array* $modules, [*mixed* $merge])

アプリケーション内にあるモジュールの配列を登録します。

```php
<?php

$this->registerModules(
    [
        "frontend" => [
            "className" => "Multiple\Frontend\Module",
            "path"      => "../apps/frontend/Module.php",
        ],
        "backend" => [
            "className" => "Multiple\Backend\Module",
            "path"      => "../apps/backend/Module.php",
        ],
    ]
);

```

public **getModules** ()

アプリケーションに登録されているモジュールを返す

public **getModule** (*mixed* $name)

モジュール名でアプリケーションに登録されているモジュール定義を取得します。

public **setDefaultModule** (*mixed* $defaultModule)

ルーターが有効なモジュールを返さない場合、使用するモジュール名を設定します

public **getDefaultModule** ()

デフォルトのモジュール名を返します

abstract public **handle** ()

リクエストを処理します。

public **setDI** ([Phalcon\DiInterface](/3.4/en/api/Phalcon_DiInterface) $dependencyInjector) inherited from [Phalcon\Di\Injectable](/3.4/en/api/Phalcon_Di_Injectable)

DIをセットします。

public **getDI** () inherited from [Phalcon\Di\Injectable](/3.4/en/api/Phalcon_Di_Injectable)

内部のDIを返します。

public **__get** (*string* $propertyName) inherited from [Phalcon\Di\Injectable](/3.4/en/api/Phalcon_Di_Injectable)

マジックメソッド __get