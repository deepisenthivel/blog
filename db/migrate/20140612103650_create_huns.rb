class CreateHuns < ActiveRecord::Migration
  def change
    create_table :huns do |t|
      t.string :name

      t.timestamps
    end
  end
end
