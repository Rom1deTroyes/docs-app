---
layout: default
language: 'cs-cz'
version: '3.4'
title: 'Phalcon\Mvc\Model\MetaData\Strategy\Annotations'
---

# Class **Phalcon\Mvc\Model\MetaData\Strategy\Annotations**

*implements* [Phalcon\Mvc\Model\MetaData\StrategyInterface](/3.4/en/api/Phalcon_Mvc_Model_MetaData_StrategyInterface)

<a href="https://github.com/phalcon/cphalcon/tree/v3.4.0/phalcon/mvc/model/metadata/strategy/annotations.zep" class="btn btn-default btn-sm">Source on GitHub</a>

## Methods

final public **getMetaData** ([Phalcon\Mvc\ModelInterface](/3.4/en/api/Phalcon_Mvc_ModelInterface) $model, [Phalcon\DiInterface](/3.4/en/api/Phalcon_DiInterface) $dependencyInjector)

The meta-data is obtained by reading the column descriptions from the database information schema

final public **getColumnMaps** ([Phalcon\Mvc\ModelInterface](/3.4/en/api/Phalcon_Mvc_ModelInterface) $model, [Phalcon\DiInterface](/3.4/en/api/Phalcon_DiInterface) $dependencyInjector)

Read the model's column map, this can't be inferred