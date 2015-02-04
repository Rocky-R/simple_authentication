class Teacher < ActiveRecord::Base
  has_many :parents
  has_secure_password
  validates_confirmation_of :password
  validates_presence_of :email
  validates_uniqueness_of :email
end
