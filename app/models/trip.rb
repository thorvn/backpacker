# == Schema Information
#
# Table name: trips
#
#  id               :integer          not null, primary key
#  user_id          :integer
#  title            :string
#  body             :text
#  price            :integer
#  image            :string
#  start_date       :date
#  end_date         :date
#  number_of_member :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Trip < ApplicationRecord
end
