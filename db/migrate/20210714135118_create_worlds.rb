class CreateWorlds < ActiveRecord::Migration[6.1]
  def change
    create_table :worlds do |t|
      t.string :name, null: false, index: { unique: true }
      t.timestamps
    end
  end
end
