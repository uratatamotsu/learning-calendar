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


# テーブル設計

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| name               | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |


## rooms テーブル

| Column | Type   | Options     |
| ------ | ------ | ----------- |
| name   | string | null: false |

## targets テーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| content_of_study   | string     | null: false                    |
| study_time         | integer    | null: false                    |
| room               | references | null: false, foreign_key: true |

## calendars テーブル

| Column  | Type       | Options     |
| ------- | ---------- | ----------- |
| date    | date       | null: false |
| time    | integer    | null: false |