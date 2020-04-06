# == Schema Information
#
# Table name: articles
#
#  id         :bigint           not null, primary key
#  content    :text(65535)
#  is_draft   :boolean
#  title      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

class Article < ApplicationRecord
  belongs_to :user

  # 公開済みの記事一覧を渡す
  scope :published, -> {
    where(is_draft: false)
  }

  # 指定したユーザーの記事一覧
  scope :article_list, -> (user_id) {
    where(user_id: user_id) if user_id.present?
  }
end
