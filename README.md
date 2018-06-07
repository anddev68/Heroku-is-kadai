# README

## デフォルトのメモ

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


## セットアップメモ

インストール時にnokogiriとsqlite3のエラーがでるので，下記コマンドを実行する必要がある．
```
$ bundle config build.nokogiri --use-system-libraries --with-xml2-include=$(brew --prefix libxml2)/include/libxml2

$ bundle config build.sqlite3 --with-sqlite3-lib=/usr/lib
```

インストールして実行
```
$ bundle install --path=vender/bundle 
$ bundle exec rails new .
$ bundle exec rails s 
```

Herokuはsqlite3対応してないんで，postgresqlにしなさいとのこと．
```
production:
  <<: *default
  adapter: postgresql
  database: db/production.postgresql
  # database: db/production.sqlite3
```


#### 参考
- https://qiita.com/narikei/items/cd029911597cdc71c516
- https://qiita.com/ganta/items/3bb378726149a759d085
