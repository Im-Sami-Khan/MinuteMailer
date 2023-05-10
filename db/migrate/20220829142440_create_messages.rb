class CreateMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :messages do |t|
      t.string :text, limit: 50, null: false

      t.timestamps
    end
  end
end
