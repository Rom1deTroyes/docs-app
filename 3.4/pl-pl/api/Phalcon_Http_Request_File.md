---
layout: default
language: 'pl-pl'
version: '3.4'
title: 'Phalcon\Http\Request\File'
---

# Class **Phalcon\Http\Request\File**

*implements* [Phalcon\Http\Request\FileInterface](/3.4/en/api/Phalcon_Http_Request_FileInterface)

<a href="https://github.com/phalcon/cphalcon/tree/v3.4.0/phalcon/http/request/file.zep" class="btn btn-default btn-sm">Source on GitHub</a>

Provides OO wrappers to the $_FILES superglobal

```php
<?php

use Phalcon\Mvc\Controller;

class PostsController extends Controller
{
    public function uploadAction()
    {
        // Check if the user has uploaded files
        if ($this->request->hasFiles() == true) {
            // Print the real file names and their sizes
            foreach ($this->request->getUploadedFiles() as $file) {
                echo $file->getName(), " ", $file->getSize(), "\n";
            }
       }
    }
}

```

## Metody

public **getError** ()

public **getKey** ()

public **getExtension** ()

public **__construct** (*array* $file, [*mixed* $key])

Phalcon\Http\Request\File constructor

public **getSize** ()

Returns the file size of the uploaded file

public **getName** ()

Returns the real name of the uploaded file

public **getTempName** ()

Returns the temporary name of the uploaded file

public **getType** ()

Returns the mime type reported by the browser This mime type is not completely secure, use getRealType() instead

public **getRealType** ()

Gets the real mime type of the upload file using finfo

public **isUploadedFile** ()

Checks whether the file has been uploaded via Post.

public **moveTo** (*mixed* $destination)

Moves the temporary file to a destination within the application