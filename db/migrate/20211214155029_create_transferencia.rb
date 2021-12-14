class CreateTransferencia < ActiveRecord::Migration[5.2]
  def change
    create_table :transferencia do |t|
      t.integer :monto

      t.timestamps
    end
  end
end
