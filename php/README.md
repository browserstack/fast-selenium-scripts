# PHP Fast Selenium

fast-selenium script to speed up your selenium tests on BrowserStack.

## How it works

All you have to do is download the `fast-selenium.php` file and include it in your code.

```
require_once('./fast-selenium.php');
```

## Usage

Add following line after initiating `RemoteWebDriver`:
```php
$web_driver->setCommandExecutor(
    (new FastHttpCommandExecutor($url))
    ->setHeaders()
);
```

Note: Include `$http_proxy` and `$http_proxy_port` as required. 
```php
$web_driver->setCommandExecutor(
    (new FastHttpCommandExecutor($url, $http_proxy, $http_proxy_port))
    ->setHeaders()
);
```
