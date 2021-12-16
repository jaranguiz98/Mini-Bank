class AccountsController < ApplicationController
    def index
        @cuentas = Account.all
        route = 'https://indecon.site/last'
        data = RestClient.get("#{route}")
        @info = JSON.parse(data)
        @output = Hash.new
        @info.each do |key, value|
            @output[key] = value
        end
        
        
    end 
    def new
        @cuenta = Account.new
    end
    def show
        @cuenta = Account.find(params[:id])
    end
    def create
        tipo = params.require(:tipo)
        hash = {tipo: tipo, monto: 1000}
        
        @cuenta = current_usuario.accounts.create(hash)
        if @cuenta.save
            redirect_to accounts_index_path, notice: 'Se creó la cuenta con éxito'
        else
            redirect_to accounts_new_path, notice: 'Hubo un problema vuelve a intentar'
        end
    end    

    def delete
        @cuenta = Account.find(params[:id])
        @cuenta.destroy
        redirect_to accounts_index_path, notice: 'Se ha eliminado su cuenta :('
    end
end
