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
$rails new bbs -d mysql
# データベースを作る
$./bin/rake db:create
```

必要なGemのインストール
Gemfileに以下を追加

```
gem 'devise'
```

```
# Bundleインストール
$bundle install
# Deviseのインストール
$rails generate devise:install
```
