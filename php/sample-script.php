<?php
    require_once('vendor/autoload.php');
    require_once('./fast-selenium.php');

    use Facebook\WebDriver\Remote\RemoteWebDriver;
    use Facebook\WebDriver\WebDriverBy;
    $url = "https://YOUR_USERNAME:YOUR_ACCESS_KEY@hub-cloud.browserstack.com/wd/hub";
    
    $caps = array(
        "os_version" => "10",
        "resolution" => "1920x1080",
        "browserName" => "Chrome",
        "browser_version" => "84.0",
        "os" => "Windows",
    );

    $web_driver = RemoteWebDriver::create(
        $url,
        $caps
    );

    // Include after initiating Web Driver
    $web_driver->setCommandExecutor((
        new FastHttpCommandExecutor($web_driver->getCommandExecutor()
            ->getAddressOfRemoteServer()))
            ->setHeaders());

    $web_driver->get("https://www.google.com");
    $element = $web_driver->findElement(WebDriverBy::name("q"));
    if($element) {
        $element->sendKeys("Browserstack");
        $element->submit();
    }
    print $web_driver->getTitle();
    $web_driver->quit();

?>
