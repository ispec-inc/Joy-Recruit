# == Schema Information
#
# Table name: places
#
#  id          :bigint           not null, primary key
#  address     :string(255)
#  description :string(255)
#  latitude    :float(24)
#  longitude   :float(24)
#  name        :string(255)
#  website_url :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Place < ApplicationRecord
  def details
    {
      address: address,
      description: description,
    }
  end
end
