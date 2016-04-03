class Category < ActiveRecord::Base
  has_and_belongs_to_many :apps
  has_and_belongs_to_many :campaigns
end
