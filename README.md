# dependent: :destroyの付け方

## 下記の規則に当てはまるものは、dependent: :destroyを付与する。
* 規則
  * モデルのhas_manyで指定されている子モデルはdestroy付与対象。
  * 但し、has_manyで指定されている子モデルであっても、孫モデルがあるものは親モデルでは対象外。子モデルの中でdestroy付与する。
  * through経由のものは対象外。

### どれにdestroyを付与すべきかの例
```ruby
class User < ApplicationRecord
  has_many :direct_messages             # => 対象
  has_many :direct_message_stats        # => 対象外(DirectMessageStatはDirectMessageモデルの子モデル(Userから見たら孫モデル)なので、DirectMessageモデルの中でdestroy付与する。
  has_many :user_rooms                  # => 対象
  has_many :rooms, through: :user_rooms # => 対象外
end
```

```ruby
class UserRoom < ApplicationRecord
  belongs_to :user  # => 対象外
  belongs_to :room  # => 対象外
end
```

```ruby
class Room < ApplicationRecord
  has_many :user_rooms                  # => 対象
  has_many :users, through: :user_rooms # => 対象外
  has_many :direct_messages             # => 対象
end
```

```ruby
class DirectMessage < ApplicationRecord
  has_many   :direct_message_stats # => 対象
  belongs_to :user                 # => 対象外
  belongs_to :room                 # => 対象外
end
```

```ruby
class DirectMessageStat < ApplicationRecord
  belongs_to :direct_message # => 対象外
  belongs_to :user           # => 対象外
end
```

## rails console用テストファイル
`./test.rb`

`rails console --sandbox`から、`require "./test.rb"`で実行可能。
中身は各データの削除コマンドと実行後の各データ参照コマンド。
テスト用データはdb/seeds.rbで作成可能。
