# == Schema Information
#
# Table name: companies
#
#  id          :bigint           not null, primary key
#  address     :string(255)
#  description :string(255)
#  name        :string(255)
#  website_url :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Company < ApplicationRecord
  has_many :companies

  def details
    "This company is #{name}"
  end
end
