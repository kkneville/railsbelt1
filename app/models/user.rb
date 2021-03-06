class User < ActiveRecord::Base
  has_secure_password
  email_regex = /\A([^@\s]+)@((?:[-a-z0-9]+.)+[a-z]+)\z/i
  validates :name, :alias, :email, presence: :true
  validates :email, uniqueness: :true, format: {with: email_regex}
  before_save :downcase_email
  has_many :ideas
  has_many :likes
  has_many :ideas, through: :likes  


  def downcase_email
  	self.email.downcase!
  end 

end
 