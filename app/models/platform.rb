class Platform < ActiveRecord::Base
  has_many :apps
  validates :name, presence: true
end
