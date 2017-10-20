# == Schema Information
#
# Table name: orders
#
#  id           :integer          not null, primary key
#  first_name   :string
#  last_name    :string
#  city         :string
#  postal_code  :string
#  province     :string
#  phone_number :string
#  email        :string
#  order_type   :string
#  food         :string
#  drink        :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Order < ApplicationRecord
  validates :email, uniqueness: true
  validates :first_name, :last_name, :city, :postal_code, :order_type,
            :food, :drink, :email, :phone_number, presence: true

  has_many :feedbacks
  accepts_nested_attributes_for :feedbacks, allow_destroy: true,
    reject_if: proc { |attributes| attributes['comment'].blank? && attributes['image'].blank? }


  PROVINCES = ["Ontario", "Quebec", "Nova Scotia", "New Brunswick", "Manitoba",
                "British Columbia", "Prince Edward Island", "Saskatchewan",
                "Alberta", "Newfoundland and Labrador"]
  DRINKS    = ["Water", "Cocacola", "Pepsi", "Sprite", "Cafe", "Redbull"]
  FOOD      = ["Fries", "Chicken", "Poutine", "Pho", "Beef", "Burger"]
end
