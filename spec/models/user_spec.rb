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

#This is our spec for the USER MODEL (DB) (USER.RB)

require 'spec_helper'

describe User do
  before {@user = User.new(username: "ExampleUser", email: "example@example.com")}

  subject {@user}

  it {should respond_to(:username)}
  it {should respond_to(:email)}

  it {should be_valid}

  #NAME VALIDATIONS

  describe "when name is not present" do
  	before {@user.username = " "}
  	it {should_not be_valid}
  end

  #the max username length is 15! (FOR NOW?!) ########################################
  describe "when name is too long" do
  	before {@user.username = "a"*16}
  	it {should_not be_valid}
  end

  #EMAIL VALIDATIONS

  describe "when email is not present" do
  	before {@user.email = " "}
  	it {should_not be_valid}
  end

  describe "when email is too long"
end
