# == Schema Information
#
# Table name: flights
#
#  id             :bigint(8)        not null, primary key
#  departure      :string
#  arrival        :string
#  departure_date :date
#  return_date    :date
#  people         :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'test_helper'

class FlightTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
