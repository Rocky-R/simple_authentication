class Teacher < ActiveRecord::Base
  has_many :parents
  has_secure_password
  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :email
  validates_uniqueness_of :email

  def self.authenticate(email, password)
    teacher = find_by_email(email)
    if teacher && teacher.password_digest
      teacher
    else
      nil
    end
end
