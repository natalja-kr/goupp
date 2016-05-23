class Creative < ActiveRecord::Base
  self.inheritance_column = nil
  belongs_to :campaign

  validates :type, presence: true

  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  TYPEALL = [['Картинка',0], ['Текст',1]]

  def self.types
    Creative::TYPEALL
  end

  def type_str
    TYPEALL.detect {|s| s[1]==self.type}[0]
  end
end
