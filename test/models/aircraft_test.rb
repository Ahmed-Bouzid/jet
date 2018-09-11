# == Schema Information
#
# Table name: aircrafts
#
#  id              :bigint(8)        not null, primary key
#  tail            :string
#  category        :string
#  aircraft_type   :string
#  maxpax          :integer
#  actual_position :string
#  price           :string
#  company         :string
#  origin          :string
#  yom             :string
#  yor             :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'test_helper'

class AircraftTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
