class App < ActiveRecord::Base
  include PublicActivity::Model
  tracked
  belongs_to :user
  belongs_to :platform
  has_and_belongs_to_many :categories
  has_many :campaigns

  validates :name, presence: true, length: {minimum: 2, maximum: 100}
  validates :description, presence: true
  validates :user_id, presence: true
  validates :platform_id, presence: true

end
