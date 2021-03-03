class Book < ApplicationRecord
  belongs_to :user
  #  attachment :image #いるかわからない！画像アップ用のメソッド（attachment）を追加してフィールド名に（image）を指定する。refileを使用するうえでのルール。

  has_many :favorites, dependent: :destroy

    validates :title, presence: true
    validates :title, length: {maximum: 200}

    validates :body, presence: true
    validates :body, length: {maximum: 200}

  def favorited_by?(user) # favorited_by?メソッドで引数で渡されたユーザidがFavoritesテーブル内に存在（exists?）するかどうかを調べます。存在していればtrue、存在していなければfalseを返すようにしています。
    favorites.where(user_id: user.id).exists?
  end


end
