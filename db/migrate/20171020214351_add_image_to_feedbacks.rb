class AddImageToFeedbacks < ActiveRecord::Migration[5.1]
  def change
    add_column :feedbacks, :image, :string
  end
end
