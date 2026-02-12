# protospace

# 概要

## テーブル設計

### usersテーブル
| カラム名 | 型 | 説明 |
|--------|-----|-----|
| id | integer | ユーザーID（主キー） |
| email | string | メールアドレス |
| encrypted_password | string | パスワード（暗号化） |
| name | string | 名前 |
| profile | text | プロフィール |
| occupation | text | 職業 |
| position | text | ポジション |
| created_at | datetime | 作成日時 |
| updated_at | datetime | 更新日時 |

### prototypesテーブル
| カラム | 型 | 説明 |
|-------|-----|-----|
| id | integer | プロトタイプID（主キー）|
| title | string | タイトル |
| catch_copy | text | キャッチコピー |
| concept | text | コンセプト |
| user_id | integer | ユーザーID（外部キー） |
| created_at | datetime | 作成日時 |
| updated_at | datetime | 更新日時 |

### commentsテーブル
| カラム | 型 | 説明 |
|-------|-----|------|
| id | integer | コメントID（主キー）|
| content | text | コメント内容 |
| prototype_id | integer | プロトタイプID（外部キー） |
| user_id | integer | ユーザーID（外部キー）|
| created_at | datetime | 作成日時 |
| updated_at | datetime | 更新日時 |

## インストール方法
...