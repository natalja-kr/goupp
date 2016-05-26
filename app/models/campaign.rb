class Campaign < ActiveRecord::Base
  belongs_to :app
  belongs_to :version
  has_and_belongs_to_many :countries
  has_and_belongs_to_many :categories
  has_many :creatives, dependent: :destroy
  has_many :statistics, dependent: :destroy

  validates :app_id, presence: true
  validates :version_id, presence: true
  validates :operator, presence: true

  public
  def self.my_campaigns(user)
    apps = user.apps
    campaigns = self.where(app_id: apps)
  end
end
