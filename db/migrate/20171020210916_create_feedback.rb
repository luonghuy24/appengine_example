class CreateFeedback < ActiveRecord::Migration[5.1]
  def change
    create_table :feedbacks do |t|
      t.string :comment
    end
  end
end
