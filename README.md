# NARABERO
いわゆる３目並べゲームです．

### DBに作ったものたち

User
  - name: string
  - password_digest: string
  - win: integer
  - lose: integer


### ナビゲーションルール
- /game ゲーム画面
- /login ログイン画面
- /logout ログアウト画面
- /register ユーザ登録画面


### フォルダ構成
- session
  - new ログイン画面
    - ログインできた場合はセッションにユーザ情報を保存し，ゲーム画面へリダイレクト
  - delete ログアウト画面
    - セッションに保存されているユーザ情報をクリアする
    - 「ログアウトしました」を表示する
- game
  - index ゲーム画面(ログインされていなければログイン画面へリダイレクト)
  - 勝利するとユーザの勝利数+1します(ajaxによる通信)
- users
  - new ユーザ登録画面


### 使用したライブラリ
- jquery
- bootstrap



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
