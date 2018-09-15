# == Schema Information
#
# Table name: users
#
#  id                     :bigint(8)        not null, primary key
#  first_name             :string
#  last_name              :string
#  phone                  :string
#  code_confirm           :integer
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

class User < ApplicationRecord


	def transform(value)
		if value.size != 10 
			if value.size <= 10
				a = 10 - value.size
				value = value + ("0" * a)
				puts value
			else
				value = value.slice(1..10)
			end
		end
		return value
	end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable

  before_save { self.phone = transform(self.phone) }

end