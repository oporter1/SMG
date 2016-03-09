# validates :username uniqueness makes sure that password can not be duplicated
# validates :password presence makes sure that there is a password entered
class User < ActiveRecord::Base
  has_many :phones
  validates :username, uniqueness: true
  validates :password, presence: true
  validates :username, presence: true

end
