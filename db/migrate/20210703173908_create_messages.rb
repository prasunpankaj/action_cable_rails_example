class CreateMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :messages do |t|
      t.belongs_to :user
      t.belongs_to :channel
      t.datetime :message_date
      t.text :content
      t.text :user_name
      t.string :color
      t.text :effect
      t.timestamps
    end
  end
end
