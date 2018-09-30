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


require 'nokogiri'
require 'open-uri'


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

  has_many :user_flights
  has_many :messages

  has_attached_file :avatar, :styles => { :small => "150x150>" },
  :url  => "/assets/products/:id/:style/:basename.:extension",
  :path => ":rails_root/public/assets/products/:id/:style/:basename.:extension"

  validates_attachment_size :avatar, :less_than => 5.megabytes
  validates_attachment_content_type :avatar, :content_type => /\Aimage/

  @datetime = DateTime.now


end