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


## usersテーブル

|Column|Type|Options|
|------|----|-------|
|id|integer|null: false|
|name|string|null: false|
|gender|string|null: false|
|katakana|string|null: false|
|tel|integer|null: false,unique:true|
|email|integer|null: false,unique:true|
|address|varchar(255)|null: false|
|password|integer|null: false.unique:true|
|media|string||

### Association
- has_many :users_menus
- has_many :boxlunchs,through :users_menus
- has_many :singles,through :users_menus
- has_many :drinks,through :users_menus
- has_many :reservations,through :users_menus
- has_many :contacts

## contactsテーブル
|Column|Type|Options|
|------|----|-------|
|id|integer|null: false|
|name|string|null: false|
|email|integer|null: false,unique:true|
|text|text|null: false|

### Association
- belongs_to :user

## boxlunchsテーブル

|Column|Type|Options|
|------|----|-------|
|id|integer|null: false|
|name|string|null: false,unique: true|
|price|integer|null: false|
|image|text|null: false|
|Allergies|string||
|Description|varchar(255)|null:false|
|food|text|null:false|

### Association
- has_many :users_menus
- has_many :users,through :users_menus

## singlesテーブル

|Column|Type|Options|
|------|----|-------|
|id|integer|null: false|
|name|string|null: false,unique: true|
|price|integer|null: false|
|image|text|null: false|
|Allergies|string||
|Description|varchar(255)|null:false|
|food|text|null:false|

### Association
- has_many :users_menus
- has_many :users,through :users_menus

## drinksテーブル

|Column|Type|Options|
|------|----|-------|
|id|integer|null: false|
|name|string|null: false,unique: true|
|price|integer|null: false|
|image|text|null: false|
|Description|varchar(255)|null:false|

### Association
- has_many :users_menus
- has_many :users,through :users_menus

## reservationsテーブル

|Column|Type|Options|
|------|----|-------|
|id|integer|null: false|
|name|string|null: false,unique: true|
|price|integer|null: false|
|image|text|null: false|
|Allergies|string||
|Description|varchar(255)|null:false|
|food|text|null:false|

### Association
- has_many :users_menus
- has_many :users,through :users_menus

## users_menusテーブル

|Column|Type|Options|
|------|----|-------|
|id|integer|null: false|
|user_id|integer|null:false,foreign_key: true|
|boxlunch_id|integer|null:false,foreign_key: true|
|single_id|integer|null:false,foreign_key: true|
|drink_id|integer|null:false,foreign_key: true|
|reservation_id|integer|null:false,foreign_key: true|
|count|integer|null: false|

### Association
- belongs_to :user
- has_many :boxlunchs
- has_many :singles
- has_many :drinks
- has_many :reservations
