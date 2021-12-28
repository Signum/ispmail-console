class Domain < ApplicationRecord
  self.table_name = 'virtual_domains'

  has_many :mailboxes,
    -> { order(email: :asc) },
    dependent: :destroy

  scope :textsearch, -> (query) { where("name like ?", "%#{query}%")}

  def to_s
    self.name
  end
end
