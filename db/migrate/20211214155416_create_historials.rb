class CreateHistorials < ActiveRecord::Migration[5.2]
  def change
    create_table :historials do |t|

      t.timestamps
    end
  end
end
