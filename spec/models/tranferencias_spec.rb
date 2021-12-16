require 'rails_helper'

RSpec.describe Transferencium, type: :model do
  context 'when accessing a Transferencia' do
    before(:each) do
        destinatario = 1
        @monto = 10
        account_id = 1
        hash = {monto: @monto, usuario_id: destinatario, account_id: account_id}
        @transferencia = Transferencium.create(hash)
    end
    describe 'every_attribute method' do
      it 'returns the description' do
        puts @transferencia.monto
        puts @monto
        expect(@transferencia.monto).to equal(@monto)
      end
    end
  end
end