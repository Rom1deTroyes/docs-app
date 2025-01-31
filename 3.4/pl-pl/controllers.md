---
layout: default
language: 'pl-pl'
version: '3.4'
---

<a name='overview'></a>

# Przegląd

<a name='using'></a>

## Używanie kontrolerów

Akcje to metody w kontrolerze, które obsługują żądania. Domyślnie wszystkie publiczne metody w kontrolerze mapują do akcji i są dostępne za pomocą adresu URL. Akcje są odpowiedzialne za interpretację żądania i utworzenie odpowiedzi. Zwykle odpowiedzi są w formie renderowanego widoku, chociaż są również inne sposoby ich tworzenia.

Na przykład, kiedy wchodzisz na adres URL jak ten: `http://localhost/blog/posts/show/2015/the-post-title` Phalcon domyślnie rozłoży każdą część adresu w następujący sposób:

| Opis                 | Fragment URL   |
| -------------------- | -------------- |
| **Katalog Phalcona** | blog           |
| **Kontroler**        | posts          |
| **Akcja**            | show           |
| **Parametr**         | 2015           |
| **Parametr**         | the-post-title |

W takim przypadku `PostsController` obsłuży to żądanie. There is no a special location to put controllers in an application, they could be loaded using [Phalcon\Loader](api/Phalcon_Loader), so you're free to organize your controllers as you need.

Controllers must have the suffix `Controller` while actions the suffix `Action`. A sample of a controller is as follows:

```php
<?php

use Phalcon\Mvc\Controller;

class PostsController extends Controller
{
    public function indexAction()
    {

    }

    public function showAction($year, $postTitle)
    {

    }
}
```

Dodatkowe parametry URI są zdefiniowane jako parametry akcji, więc mogą być łatwo dostępne poprzez użycie lokalnych zmiennych. A controller can optionally extend [Phalcon\Mvc\Controller](api/Phalcon_Mvc_Controller). W ten sposób kontroler może mieć łatwy dostęp do aplikacyjnych serwisów.

Parameters without a default value are handled as required. Setting optional values for parameters is done as usual in PHP:

```php
<?php

use Phalcon\Mvc\Controller;

class PostsController extends Controller
{
    public function indexAction()
    {

    }

    public function showAction($year = 2015, $postTitle = 'przykładowy tytuł')
    {

    }
}
```

Parameters are assigned in the same order as they were passed in the route. You can get an arbitrary parameter from its name in the following way:

```php
<?php

use Phalcon\Mvc\Controller;

class PostsController extends Controller
{
    public function indexAction()
    {

    }

    public function showAction()
    {
        $year      = $this->dispatcher->getParam('year');
        $postTitle = $this->dispatcher->getParam('postTitle');
    }
}
```

<a name='dispatch-loop'></a>

## Pętla Komunikacyjna (ang. Dispatch Loop)

Pętla Komunikacyjna (ang. Dispatch Loop) będzie realizowana w ramach Dyspozytora, dopóki nie będzie już żadnych akcji do wykonania. W poprzednim przykładzie wykonano tylko jedną akcję. Teraz zobaczmy jak metoda `forward()`może dostarczyć bardziej złożony przepływ operacji w Pętli Komunikacyjnej, poprzez przekierowanie wykonania do innego kontrolera/akcji.

```php
<?php

use Phalcon\Mvc\Controller;

class PostsController extends Controller
{
    public function indexAction()
    {

    }

    public function showAction($year, $postTitle)
    {
        $this->flash->error(
            "Nie masz dostępu do tego zasobu"
        );

        // Przekazanie przepływu operacji do innej akcji
        $this->dispatcher->forward(
            [
                'controller' => 'users',
                'action'     => 'signin',
            ]
        );
    }
}
```

Jeżeli użytkownicy nie mają pozwolenia na dostęp do pewnej akcji, to zostaną przekierowani do akcji `signin` w `UsersController`.

```php
<?php

use Phalcon\Mvc\Controller;

class UsersController extends Controller
{
    public function indexAction()
    {

    }

    public function signinAction()
    {

    }
}
```

W Twojej aplikacji nie ma limitu dla `przekazywań` tak długo, jak nie prowadzą do odwołań cyklicznych, co skutkuje zatrzymaniem programu. If there are no other actions to be dispatched by the dispatch loop, the dispatcher will automatically invoke the view layer of the MVC that is managed by [Phalcon\Mvc\View](api/Phalcon_Mvc_View).

<a name='initializing'></a>

## Inicjowanie kontrolerów

[Phalcon\Mvc\Controller](api/Phalcon_Mvc_Controller) offers the `initialize()` method, which is executed first, before any action is executed on a controller. Używanie metody `__construct()` nie jest zalecane.

```php
<?php

use Phalcon\Mvc\Controller;

class PostsController extends Controller
{
    public $settings;

    public function initialize()
    {
        $this->settings = [
            'mySetting' => 'value',
        ];
    }

    public function saveAction()
    {
        if ($this->settings['mySetting'] === 'value') {
            // ...
        }
    }
}
```

<h5 class='alert alert-warning'>Metoda <code>initialize()</code> jest wywołana tylko wtedy, gdy zdarzenie <code>beforeExecuteRoute</code> zostało wykonane z powodzeniem. To powoduje, że logika aplikacji podczas inicjowania nie może zostać wykonana bez autoryzacji.</h5>

Jeżeli chcesz wykonać jakąś logikę podczas inicjowania, zaraz po utworzeniu obiektu kontrolera, możesz zaimplementować metodę `onConstruct()`:

```php
<?php

use Phalcon\Mvc\Controller;

class PostsController extends Controller
{
    public function onConstruct()
    {
        // ...
    }
}
```

<h5 class='alert alert-warning'>Zwróć szczególną uwagę na to, że metoda <code>onConstruct()</code> jest wykonywana nawet wtedy, gdy akcja do realizacji nie istnieje w kontrolerze lub gdy użytkownik nie ma do niej dostępu (odnosząc się do niestandardowej kontroli dostępu dostarczonej przez Dewelopera).</h5>

<a name='injecting-services'></a>

## Wstrzykiwanie serwisów

If a controller extends [Phalcon\Mvc\Controller](api/Phalcon_Mvc_Controller) then it has easy access to the service container in application. For example, if we have registered a service like this:

```php
<?php

use Phalcon\Di;

$di = new Di();

$di->set(
    'storage',
    function () {
        return new Storage(
            '/some/directory'
        );
    },
    true
);
```

Wtedy mamy dostęp do tego serwisu na kilka różnych sposobów:

```php
<?php

use Phalcon\Mvc\Controller;

class FilesController extends Controller
{
    public function saveAction()
    {
        // Wstrzyknięcie serwisu poprzez dostęp do zmiennej o takiej samej nazwie
        $this->storage->save('/some/file');

        // Dostęp do serwisu z Kontenera Zależności
        $this->di->get('storage')->save('/some/file');

        // Kolejny sposób na dostęp do serwisu używając magicznego Akcesora
        $this->di->getStorage()->save('/some/file');

        // I jeszcze inny sposób na dostęp do serwisu używając magicznego Akcesora
        $this->getDi()->getStorage()->save('/some/file');

        // Użycie tablicowej składni
        $this->di['storage']->save('/some/file');
    }
}
```

If you're using Phalcon as a full-stack framework, you can read the services provided [by default](/3.4/en/di) in the framework.

<a name='request-response'></a>

## Żądanie i Odpowiedź

Przy założeniu, że framework dostarcza zestaw wstępnie zarejestrowanych serwisów, wyjaśnimy jak przeprowadzać interakcję ze środowiskiem HTTP. The `request` service contains an instance of [Phalcon\Http\Request](api/Phalcon_Http_Request) and the `response` contains a [Phalcon\Http\Response](api/Phalcon_Http_Response) representing what is going to be sent back to the client.

```php
<?php

use Phalcon\Mvc\Controller;

class PostsController extends Controller
{
    public function indexAction()
    {

    }

    public function saveAction()
    {
        // Sprawdź czy żądanie zostało wykonane za pomocą metody POST
        if ($this->request->isPost()) {
            // Dostęp do danych z POST
            $customerName = $this->request->getPost('name');
            $customerBorn = $this->request->getPost('born');
        }
    }
}
```

Zwracany obiekt nie jest zazwyczaj używany bezpośrednio, ale jest zbudowany przed wykonaniem akcji, niekiedy jednak, jak w zdarzeniu `afterDispatch` - dostęp do bezpośredniej odpowiedzi może być użyteczny:

```php
<?php

use Phalcon\Mvc\Controller;

class PostsController extends Controller
{
    public function indexAction()
    {

    }

    public function notFoundAction()
    {
        // Wyślij nagłówek odpowiedzi HTTP 404
        $this->response->setStatusCode(404, 'Not Found');
    }
}
```

Learn more about the HTTP environment in their dedicated articles [request](/3.4/en/request) and [response](/3.4/en/response).

<a name='session-data'></a>

## Dane Sesji

Sessions help us maintain persistent data between requests. You can access a [Phalcon\Session\Bag](api/Phalcon_Session_Bag) from any controller to encapsulate data that needs to be persistent:

```php
<?php

use Phalcon\Mvc\Controller;

class UserController extends Controller
{
    public function indexAction()
    {
        $this->persistent->name = 'Michael';
    }

    public function welcomeAction()
    {
        echo 'Welcome, ', $this->persistent->name;
    }
}
```

<a name='services'></a>

## Korzystanie z Serwisów jako Kontrolerów

Services may act as controllers, controllers classes are always requested from the services container. Accordingly, any other class registered with its name can easily replace a controller:

```php
<?php

// Zarejestruj kontroler jako serwis
$di->set(
    'IndexController',
    function () {
        $component = new Component();

        return $component;
    }
);

// Zarejestruj kontroler z przestrzenią nazw jako serwis
$di->set(
    'Backend\Controllers\IndexController',
    function () {
        $component = new Component();

        return $component;
    }
);
```

<a name='events'></a>

## Zdarzenia w Kontrolerach

Controllers automatically act as listeners for [dispatcher](/3.4/en/dispatcher) events, implementing methods with those event names allow you to implement hook points before/after the actions are executed:

```php
<?php

use Phalcon\Mvc\Controller;

class PostsController extends Controller
{
    public function beforeExecuteRoute($dispatcher)
    {
        // Wykonywane przed każdą znalezioną akcją
        if ($dispatcher->getActionName() === 'save') {
            $this->flash->error(
                "Nie posiadasz uprawnień do zapisywania postów"
            );

            $this->dispatcher->forward(
                [
                    'controller' => 'home',
                    'action'     => 'index',
                ]
            );

            return false;
        }
    }

    public function afterExecuteRoute($dispatcher)
    {
        // Wykonywane po każdej znalezionej akcji
    }
}
```