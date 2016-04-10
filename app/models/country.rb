class Country < ActiveRecord::Base
  has_and_belongs_to_many :campaigns
  validates :name, presence: true
end
