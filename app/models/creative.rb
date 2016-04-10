class Creative < ActiveRecord::Base
  belongs_to :campaign

  validates :type, presence: true
end
