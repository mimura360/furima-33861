# DB設計

## usersテーブル

| Column            | Type    | Options                 |
|-------------------|---------|-------------------------|
| nickname          | string  | null:false              |
| email             | string  | null:false, unique:true |
| encrypted_password| string  | null:false              |
| first_name        | string  | null:false              |
| last_name         | string  | null:false              |
| first_name_kana   | string  | null:false              |
| last_name_kana    | string  | null:false              |
| birthday          | date    | null:false              | 

### Association
- has_many :items
- has_many :buys

## itemsテーブル

| Column                  | Type       | Options                      |
|-------------------------|------------|------------------------------|
| title                   | string     | null:false                   | 
| description             | text       | null:false                   |
| category_id             | integer    | null:false                   |
| item_status_id          | integer    | null:false                   |
| shipping_free_status_id | integer    | null:false                   |
| prefecture_id           | integer    | null:false                   |
| days_to_ship_id         | integer    | null:false                   |
| price                   | integer    | null:false                   |
| user                    | references | null:false, foreign_key:true |

### Association
- belongs_to :user
- has_one :buy

## buysテーブル
| Column | Type       | Options                     |
|--------|------------|-----------------------------|
| item   | references | null:false,foreign_key:true | 
| user   | references | null:false,foreign_key:true |

### Association
- belongs_to :user
- belongs_to :item
- has_one :address


## addressesテーブル

| Column        | Type       | Options                      |
|---------------|------------|------------------------------|
| postal_code   | string     | null:false                   | 
| prefecture_id | integer    | null:false                   |
| municipality  | string     | null:false                   |
| street_number | string     | null:false                   |
| building_name | string     |                              |
| phone_number  | string     | null:false                   |
| buy           | references | null:false, foreign_key:true |

### Association
- belongs_to :buy
