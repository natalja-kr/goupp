class Creative < ActiveRecord::Base
  self.inheritance_column = nil
  belongs_to :campaign

  validates :type, presence: true

  TYPEALL = [['Картинка',0], ['Текст',1]]

  def self.types
    Creative::TYPEALL
  end

  def type_str
    TYPEALL.detect {|s| s[1]==self.type}[0]
  end
end
