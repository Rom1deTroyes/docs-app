---
layout: default
language: 'tr-tr'
version: '3.4'
title: 'Phalcon\Mvc\CollectionInterface'
---

# Interface **Phalcon\Mvc\CollectionInterface**

<a href="https://github.com/phalcon/cphalcon/tree/v3.4.0/phalcon/mvc/collectioninterface.zep" class="btn btn-default btn-sm">Source on GitHub</a>

## Methods

abstract public **setId** (*mixed* $id)

...

abstract public **getId** ()

...

abstract public **getReservedAttributes** ()

...

abstract public **getSource** ()

...

abstract public **setConnectionService** (*mixed* $connectionService)

...

abstract public **getConnection** ()

...

abstract public **setDirtyState** (*mixed* $dirtyState)

...

abstract public **getDirtyState** ()

...

abstract public static **cloneResult** ([Phalcon\Mvc\CollectionInterface](/3.4/en/api/Phalcon_Mvc_CollectionInterface) $collection, *array* $document)

...

abstract public **fireEvent** (*mixed* $eventName)

...

abstract public **fireEventCancel** (*mixed* $eventName)

...

abstract public **validationHasFailed** ()

...

abstract public **getMessages** ()

...

abstract public **appendMessage** ([Phalcon\Mvc\Model\MessageInterface](/3.4/en/api/Phalcon_Mvc_Model_MessageInterface) $message)

...

abstract public **save** ()

...

abstract public static **findById** (*mixed* $id)

...

abstract public static **findFirst** ([*array* $parameters])

...

abstract public static **find** ([*array* $parameters])

...

abstract public static **count** ([*array* $parameters])

...

abstract public **delete** ()

...