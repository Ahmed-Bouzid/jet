# == Schema Information
#
# Table name: airports
#
#  id         :bigint(8)        not null, primary key
#  code       :string
#  name       :string
#  city       :string
#  country    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class AirportTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
