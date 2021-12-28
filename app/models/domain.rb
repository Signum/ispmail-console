class Domain < ApplicationRecord
  self.table_name = 'virtual_domains'
  scope :textsearch, -> (query) { where("name like ?", "%#{query}%")}

  def to_s
    self.name
  end
end
