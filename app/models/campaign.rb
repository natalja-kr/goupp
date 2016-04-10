class Campaign < ActiveRecord::Base
  belongs_to :app
  belongs_to :version
  has_and_belongs_to_many :countries
  has_and_belongs_to_many :categories
  has_many :creatives

  validates :app_id, presence: true
  validates :version_id, presence: true
  validates :operator, presence: true
end
