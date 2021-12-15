class AccountsController < ApplicationController
    def index
        @cuentas = Account.all
    end 
    def new
        @cuenta = Account.new
    end
    def show
        cuentas = Account.find(params[:id])
    end
    def create
        @parametros = params.require(:account).permit(:tipo)
        @cuenta = accounts.create(@parametros)
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
