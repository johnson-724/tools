## PHP 開發相關

### php-composer-build.sh
使用 laravelsail composer image 安裝套件
- 加入可執行路徑
    `sudo cp ./php/php-composer-build.sh /usr/local/bin/php-composer-build.php`
    `sudo chmod -x /usr/local/bin/php-composer-build.php`
- 建立 alias (optional)
    `alias composer-build="bash php-composer-build.php"`