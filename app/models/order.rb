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

  PROVINCES = ["Ontario", "Quebec", "Nova Scotia", "New Brunswick", "Manitoba",
                "British Columbia", "Prince Edward Island", "Saskatchewan",
                "Alberta", "Newfoundland and Labrador"]
  DRINKS    = ["Water", "Cocacola", "Pepsi", "Green Tea", "Cafe", "Red Bull"]
  FOOD      = ["Fries", "Chicken Wings", "Poutine", "Pho", "Fried Rice", "Burger"]
end
