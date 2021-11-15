# README

# name 名前
# TIMER_QUIZ
image or gif

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
| comment            | text       | null: false                   |
| user               | references | null: false, foreign_key:true |
| item               | references | null: false, foreign_key:true |

### Association

- belongs_to :user
- belongs_to :quiz

## quiz_displaysテーブル

| Column             | Type       | Options                       |
| ------------------ | ---------- | ----------------------------- |
| comment            | text       | null: false                   |
| user               | references | null: false, foreign_key:true |

### Association

- belongs_to :user