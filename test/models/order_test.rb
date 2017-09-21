# == Schema Information
#
# Table name: orders
#
#  id           :integer          not null, primary key
#  first_name   :string
#  last_name    :string
#  city         :string
#  postal_code  :string
#  privince     :string
#  phone_number :string
#  email        :string
#  order_type   :string
#  food         :string
#  drink        :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
