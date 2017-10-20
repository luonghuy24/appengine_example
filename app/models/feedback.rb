# == Schema Information
#
# Table name: feedbacks
#
#  id           :integer          not null, primary key
#  image        :string
#  comment      :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Feedback < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :order
end
