# README

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

# Create Steps

プロジェクトの作成

```
# MySQLをデータベースに指定してアプリを作る
$ rails new bbs -d mysql
# データベースを作る
$ ./bin/rake db:create
```

必要なGemのインストール
Gemfileに以下を追加

```
gem 'devise'
```

モデルの作成

```
# Bundleインストール
$ bundle install
# Deviseのインストール
$ rails generate devise:install
# Generate MODEL Class for User Class
$ rails generate devise User
# Run migration
$ bundle exec rake db:migrate
# Generate Threadsモデル
$ rails g model Boards
# Boardsで作ったMigrationファイルに作成するカラムの情報を追加する
$ bundle exec rake db:migrate
$ rails g model Comments
# Commentsで作ったMigrationファイルに作成するカラムの情報を追加する
$ bundle exec rake db:migrate
```

コントローラーの作成

```
$ rails g controller Boards
$ rails g controller Comments
```


# その他メモ

```
# Migrationを一つ前に戻る
$ rake db:rollback
# Migrationを全部リセットする
$ rake db:migrate:reset
```
