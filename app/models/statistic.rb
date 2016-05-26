class Statistic < ActiveRecord::Base
  belongs_to :campaign
  belongs_to :creative

  TYPEACT = {0 => 'Закрыть', 1 => 'Клик'}

  def self.type_act(act)
    TYPEACT[act]
  end

end
