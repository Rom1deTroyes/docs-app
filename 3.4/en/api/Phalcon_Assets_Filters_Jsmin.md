---
layout: default
language: 'en'
version: '3.4'
title: 'Phalcon\Assets\Filters\Jsmin'
---
# Class **Phalcon\Assets\Filters\Jsmin**

*implements* [Phalcon\Assets\FilterInterface](/3.4/en/api/Phalcon_Assets_FilterInterface)

<a href="https://github.com/phalcon/cphalcon/tree/v3.4.0/phalcon/assets/filters/jsmin.zep" class="btn btn-default btn-sm">Source on GitHub</a>

Deletes the characters which are insignificant to JavaScript. Comments will be removed. Tabs will be
replaced with spaces. Carriage returns will be replaced with linefeeds.
Most spaces and linefeeds will be removed.


## Methods
public  **filter** (*mixed* $content)

Filters the content using JSMIN



