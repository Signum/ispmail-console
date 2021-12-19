class Domain < ApplicationRecord
  self.table_name = 'virtual_domains'

  def to_s
    self.name
  end
end
