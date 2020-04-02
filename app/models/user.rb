# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  age        :integer
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  company_id :integer
#

class User < ApplicationRecord
  belongs_to :company
  has_many :articles

  # 指定したcompanyに属するユーザー一覧
  scope :user_list, -> (company_id) {
    where(company_id: company_id)
  }

end
