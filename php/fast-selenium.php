<?php

    use Facebook\WebDriver\Remote\HttpCommandExecutor;
    
    class FastHttpCommandExecutor extends HttpCommandExecutor
    {
        const DEFAULT_HTTP_HEADERS = [
            'Connection: keep-alive',
            'Content-Type: application/json;charset=UTF-8',
            'Accept: application/json',
        ];

        public function setHeaders()
        {
            curl_setopt($this->curl, CURLOPT_HTTPHEADER, static::DEFAULT_HTTP_HEADERS);
            return $this;
        }
    }
  
?>