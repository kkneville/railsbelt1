class Idea < ActiveRecord::Base	
  belongs_to :user
  validates :content, :user, presence: :true
  has_many :likes
  has_many :users, through: :likes


end
