class Event < ActiveRecord::Base
	has_and_belongs_to_many :users
	has_many :attorneys
	has_many :cases

end
