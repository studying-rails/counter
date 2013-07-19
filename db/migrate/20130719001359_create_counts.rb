class CreateCounts < ActiveRecord::Migration
  def change
    create_table :counts do |t|
      t.integer :value, null: false, default: 0

      t.timestamps
    end
  end
end
