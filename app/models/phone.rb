class Phone < ActiveRecord::Base
  #this table belongs to the user table 
  belongs_to :user
end
