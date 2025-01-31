---
layout: default
language: 'ru-ru'
version: '3.4'
title: 'Phalcon\Security'
---

# Class **Phalcon\Security**

*implements* [Phalcon\Di\InjectionAwareInterface](/3.4/en/api/Phalcon_Di_InjectionAwareInterface)

<a href="https://github.com/phalcon/cphalcon/tree/v3.4.0/phalcon/security.zep" class="btn btn-default btn-sm">Source on GitHub</a>

This component provides a set of functions to improve the security in Phalcon applications

```php
<?php

$login    = $this->request->getPost("login");
$password = $this->request->getPost("password");

$user = Users::findFirstByLogin($login);

if ($user) {
    if ($this->security->checkHash($password, $user->password)) {
        // The password is valid
    }
}

```

## Constants

*integer* **CRYPT_DEFAULT**

*integer* **CRYPT_STD_DES**

*integer* **CRYPT_EXT_DES**

*integer* **CRYPT_MD5**

*integer* **CRYPT_BLOWFISH**

*integer* **CRYPT_BLOWFISH_A**

*integer* **CRYPT_BLOWFISH_X**

*integer* **CRYPT_BLOWFISH_Y**

*integer* **CRYPT_SHA256**

*integer* **CRYPT_SHA512**

## Methods

public **setWorkFactor** (*mixed* $workFactor)

...

public **getWorkFactor** ()

...

public **__construct** ()

Phalcon\Security constructor

public **setDI** ([Phalcon\DiInterface](/3.4/en/api/Phalcon_DiInterface) $dependencyInjector)

Sets the dependency injector

public **getDI** ()

Returns the internal dependency injector

public **setRandomBytes** (*mixed* $randomBytes)

Sets a number of bytes to be generated by the openssl pseudo random generator

public **getRandomBytes** ()

Returns a number of bytes to be generated by the openssl pseudo random generator

public **getRandom** ()

Returns a secure random number generator instance

public **getSaltBytes** ([*mixed* $numberBytes])

Generate a >22-length pseudo random string to be used as salt for passwords

public **hash** (*mixed* $password, [*mixed* $workFactor])

Creates a password hash using bcrypt with a pseudo random salt

public **checkHash** (*mixed* $password, *mixed* $passwordHash, [*mixed* $maxPassLength])

Checks a plain text password and its hash version to check if the password matches

public **isLegacyHash** (*mixed* $passwordHash)

Checks if a password hash is a valid bcrypt's hash

public **getTokenKey** ()

Generates a pseudo random token key to be used as input's name in a CSRF check

public **getToken** ()

Generates a pseudo random token value to be used as input's value in a CSRF check

public **checkToken** ([*mixed* $tokenKey], [*mixed* $tokenValue], [*mixed* $destroyIfValid])

Check if the CSRF token sent in the request is the same that the current in session

public **getSessionToken** ()

Returns the value of the CSRF token in session

public **destroyToken** ()

Removes the value of the CSRF token and key from session

public **computeHmac** (*mixed* $data, *mixed* $key, *mixed* $algo, [*mixed* $raw])

Computes a HMAC

public **setDefaultHash** (*mixed* $defaultHash)

Sets the default hash

public **getDefaultHash** ()

Returns the default hash

public **hasLibreSsl** ()

Testing for LibreSSL

public **getSslVersionNumber** ()

Getting OpenSSL or LibreSSL version Parse OPENSSL_VERSION_TEXT because OPENSSL_VERSION_NUMBER is no use for LibreSSL.

```php
<?php

if ($security->getSslVersionNumber() >= 20105) {
    // ...
}

```