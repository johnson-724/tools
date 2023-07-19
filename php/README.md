## PHP 開發相關

### php-composer-build.sh
使用 laravelsail composer image 安裝套件或執行 php script
- 加入可執行路徑
    `sudo cp ./php/php-composer-build.sh /usr/local/bin/php-composer-build.sh`
    `sudo chmod -x /usr/local/bin/php-composer-build.sh`
- 建立 alias (optional)
    `alias composer-build="bash php-composer-build.sh"`