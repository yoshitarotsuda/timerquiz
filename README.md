# README

# アプリケーション名：TIMER_QUIZ
[![Image from Gyazo](https://i.gyazo.com/44152489dba970b45e015f243681e6d0.gif)](https://gyazo.com/44152489dba970b45e015f243681e6d0)

|                            |        |
| ---------------------------| ------ |
|アプリケーション概要 | タイマーとクイズが出来ます。 |
|URL|Heroku:https://timerquiz.herokuapp.com/|
|BASIC認証|- user：test<br>- password：6666|
|テスト用アカウント|- メールアドレス:test2@test.com<br>- パスワード:t22222|
|利用方法|簡単なタイマーとして利用できます。<br>IT関連のクイズを解くこともできます。<br>クイズにはジャンルと難易度での検索機能があります。<br>「クイズ自動」ボタンは「解答」で指定した時間で自動で一番上のクイズの解答ボタンを押し、「次問」で指定した時間で自動でxボタンを押し一番上のクイズを削除します。<br>検索や✖️ボタンで消えてしまったクイズは「元に戻す」ボタンで戻ります。<br>タイマー機能とクイズの閲覧機能はログアウト状態でも利用できます。<br>クイズの作成機能とコメント機能、評価機能はログイン状態でなければ利用できません。|
|作成背景|プログラミングの学習兼練習アプリとして作成しました。<br>またプログラミングスクールでのミーティング時のタイマー、自身の学習内容のメモ書き、簡単な知識の出力先としても利用できるように機能を実装しました。|
|要件定義シート|https://docs.google.com/spreadsheets/d/1-xomnRxqZOqZiOlmSGPnxvvITq7rxj0Nx5b4mdCJICg/edit#gid=982722306|
|データベース設計図|<img src="https://i.gyazo.com/a7472ebb177f6ea0f0fe7e0131948056" width="250">|
|画面遷移図|[![Image from Gyazo](https://i.gyazo.com/d8be2bca691e8bfe7c592e5040ba1f0e.png)](https://gyazo.com/d8be2bca691e8bfe7c592e5040ba1f0e)|
|開発環境|- フロントエンド:HTML,CSS/JavaScript<br>- バックエンド:Ruby/Ruby on Rails<br>- インフラ:heroku,MySQL<br>- テスト:RSpec<br>- テキストエディタ:Visual Studio Code<br>- タスク管理:GitHubプロジェクトボード|
|ローカルでの動作方法|以下コマンドを順に実行してください<br>% git clone https://github.com/yoshitarotsuda/timerquiz.git<br>% cd timerquiz<br>% bundle install<br>% yarn install|
|アップデート予定|他に作成したいアプリケーション、学習を優先するため、未定です。|


## Overveiw

## Requirement

## Usage

## Features

## Reference

## Auther

## Licence


# DB設計

## usersテーブル

| Column                | Type   | Options                  |
| --------------------- | ------ | ------------------------ |
| nickname              | string | null: false              |
| email                 | string | null: false, unique:true |
| encrypted_password    | string | null: false              |

### Association

- has_many :quizzes
- has_many :comments
- has_many :likes
- has_one  :quiz_display

## quizzesテーブル

| Column               | Type       | Options                       |
| -------------------- | ---------- | ----------------------------- |
| quiz_name            | string     | null: false                   |
| quiz_category_id     | integer    | null: false                   |
| quiz_level_id        | integer    | null: false                   |
| quiz_text            | text       | null: false                   |
| quiz_answer          | text       | null: false                   |
| quiz_sample          | text       |                               |
| user                 | references | null: false, foreign_key:true |

### Association

- belongs_to :user
- has_many :comments
- has_many :likes

## commentsテーブル

| Column             | Type       | Options                       |
| ------------------ | ---------- | ----------------------------- |
| comment            | text       | null: false                   |
| user               | references | null: false, foreign_key:true |
| item               | references | null: false, foreign_key:true |

### Association

- belongs_to :user
- belongs_to :quiz


## likesテーブル

| Column             | Type       | Options                       |
| ------------------ | ---------- | ----------------------------- |
| like_id            | integer    | null: false                   |
| user               | references | null: false, foreign_key:true |
| item               | references | null: false, foreign_key:true |

### Association

- belongs_to :user
- belongs_to :quiz
