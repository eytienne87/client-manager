class Client < ApplicationRecord
  belongs_to :user

  validates :first_name, :last_name, :user, :address, presence: true
end
