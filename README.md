# README

## ゲームの勝敗記録ツール
ゲームの勝敗を記録するツールです．

### DBに作ったものたち

User
  - name: string
  - password_digest: string
  - win: integer
  - lose: integer


### フォルダ構成
- session
  - new ログイン画面
    - ログインできた場合はセッションにユーザ情報を保存し，ゲーム画面へリダイレクト
  - delete ログアウト画面
    - セッションに保存されているユーザ情報をクリアする
    - 「ログアウトしました」を表示する
- game
  - index ゲーム画面(ログインされていなければログイン画面へリダイレクト)
- users
  - new ユーザ登録画面




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

heroku上でマイグレーションする
```
heroku run:detached rake db:migrate
```

#### 参考
- https://qiita.com/narikei/items/cd029911597cdc71c516
- https://qiita.com/ganta/items/3bb378726149a759d085
