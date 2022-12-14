class Payment < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :categories

  validates :name, :amount, presence: true
  validates :amount, numericality: { greater_than_or_equal_to: 0 }
  validates_associated :categories
  validates_presence_of :categories
end
