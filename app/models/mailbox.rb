class Mailbox < ApplicationRecord
  self.table_name = 'virtual_users'
  # scope :textsearch, -> (query) { where("name like ?", "%#{query}%")}

  belongs_to :domain

  def to_s
    self.email
  end
end
