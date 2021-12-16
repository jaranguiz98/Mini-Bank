class AddUsuarioToAccounts < ActiveRecord::Migration[5.2]
  def change
    add_reference :accounts, :usuario, foreign_key: true
  end
end
