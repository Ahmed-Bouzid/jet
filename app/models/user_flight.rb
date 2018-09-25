# == Schema Information
#
# Table name: user_flights
#
#  id               :bigint(8)        not null, primary key
#  user_id          :bigint(8)
#  place_departure  :string
#  place_arrival    :string
#  date_departure   :date
#  number_of_people :string
#  flight_time      :float
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class UserFlight < ApplicationRecord
  belongs_to :user
end
