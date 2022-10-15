class Category < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :payments

  validates :name, :icon, presence: true

  def total_amount_of_payments
    total = 0
    payments.each { |p| total += p.amount }
    total
  end
end
