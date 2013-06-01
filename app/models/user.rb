# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  username   :string(255)
#  email      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

#This is our USER MODEL - People's information will be stored here.

class User < ActiveRecord::Base
  attr_accessible :email, :username


#Validations

  validates :username, presence: true, length: {maximum: 15}
  validates :email, presence: true
end
