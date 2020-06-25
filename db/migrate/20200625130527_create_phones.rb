class CreatePhones < ActiveRecord::Migration[6.0]
  def change
    create_table :phones do |t|
      t.integer :number
      t.string :status
      t.boolean :used, :default => false

      t.timestamps
    end
  end
end
