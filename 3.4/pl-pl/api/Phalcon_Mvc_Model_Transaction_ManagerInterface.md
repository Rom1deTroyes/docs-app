---
layout: default
language: 'pl-pl'
version: '3.4'
title: 'Phalcon\Mvc\Model\Transaction\ManagerInterface'
---

# Interface **Phalcon\Mvc\Model\Transaction\ManagerInterface**

<a href="https://github.com/phalcon/cphalcon/tree/v3.4.0/phalcon/mvc/model/transaction/managerinterface.zep" class="btn btn-default btn-sm">Source on GitHub</a>

## Metody

abstract public **has** ()

...

abstract public **get** ([*mixed* $autoBegin])

...

abstract public **rollbackPendent** ()

...

abstract public **commit** ()

...

abstract public **rollback** ([*mixed* $collect])

...

abstract public **notifyRollback** ([Phalcon\Mvc\Model\TransactionInterface](/3.4/en/api/Phalcon_Mvc_Model_TransactionInterface) $transaction)

...

abstract public **notifyCommit** ([Phalcon\Mvc\Model\TransactionInterface](/3.4/en/api/Phalcon_Mvc_Model_TransactionInterface) $transaction)

...

abstract public **collectTransactions** ()

...