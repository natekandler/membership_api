class ContactGroup < ApplicationRecord
  belongs_to :contact
  belongs_to :group

  enum status: [:nominated, :approved]
end
