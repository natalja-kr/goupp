class Statistic < ActiveRecord::Base
  belongs_to :campaign
  belongs_to :creative

  TYPEACT = {0 => 'Закрыть', 1 => 'Клик'}

  def type_act
    TYPEACT[self.act]
  end
end
