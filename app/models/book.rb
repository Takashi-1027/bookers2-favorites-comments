class Book < ApplicationRecord
  belongs_to :user
  #  attachment :image #いるかわからない！画像アップ用のメソッド（attachment）を追加してフィールド名に（image）を指定する。refileを使用するうえでのルール。

    validates :title, presence: true
    validates :title, length: {maximum: 200}

    validates :body, presence: true
    validates :body, length: {maximum: 200}


end
