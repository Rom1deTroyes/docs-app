---
layout: default
language: 'pl-pl'
version: '3.4'
title: 'Phalcon\Paginator\Adapter\QueryBuilder'
---

# Class **Phalcon\Paginator\Adapter\QueryBuilder**

*extends* abstract class [Phalcon\Paginator\Adapter](/3.4/en/api/Phalcon_Paginator_Adapter)

*implements* [Phalcon\Paginator\AdapterInterface](/3.4/en/api/Phalcon_Paginator_AdapterInterface)

<a href="https://github.com/phalcon/cphalcon/tree/v3.4.0/phalcon/paginator/adapter/querybuilder.zep" class="btn btn-default btn-sm">Source on GitHub</a>

Pagination using a PHQL query builder as source of data

```php
<?php

use Phalcon\Paginator\Adapter\QueryBuilder;

$builder = $this->modelsManager->createBuilder()
                ->columns("id, name")
                ->from("Robots")
                ->orderBy("name");

$paginator = new QueryBuilder(
    [
        "builder" => $builder,
        "limit"   => 20,
        "page"    => 1,
    ]
);

```

## Metody

public **__construct** (*array* $config)

public **getCurrentPage** ()

Get the current page number

public **setQueryBuilder** ([Phalcon\Mvc\Model\Query\Builder](/3.4/en/api/Phalcon_Mvc_Model_Query_Builder) $builder)

Set query builder object

public **getQueryBuilder** ()

Get query builder object

public **getPaginate** ()

Returns a slice of the resultset to show in the pagination

public **setCurrentPage** (*mixed* $page) inherited from [Phalcon\Paginator\Adapter](/3.4/en/api/Phalcon_Paginator_Adapter)

Set the current page number

public **setLimit** (*mixed* $limitRows) inherited from [Phalcon\Paginator\Adapter](/3.4/en/api/Phalcon_Paginator_Adapter)

Set current rows limit

public **getLimit** () inherited from [Phalcon\Paginator\Adapter](/3.4/en/api/Phalcon_Paginator_Adapter)

Get current rows limit