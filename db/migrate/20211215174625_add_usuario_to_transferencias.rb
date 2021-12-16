class AddUsuarioToTransferencias < ActiveRecord::Migration[5.2]
  def change
    add_reference :transferencia, :usuario, foreign_key: true
  end
end
