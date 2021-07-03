class CreateChannels < ActiveRecord::Migration[6.1]
  def change
    create_table :channels do |t|
      t.string :channel_name
      t.timestamps
    end
  end
end
