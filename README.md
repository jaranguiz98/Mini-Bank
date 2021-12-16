
# Mini-Bank

# README

Mini bank es una aplicación web, realizada en ruby on rails, la cual cuenta con tres modelos importantes: Usuarios, Transferenacias y Cuentas. Inicialmente se deberá crear una base de datos con el comando en la terminal 'rails db:create' y luego migrar los modelos con 'rails db:migrate'. Luego, se podrá entrar al inicio de la página con la creación de un usuario, que le permitirá acceder a las cuentas y en caso de haber otro usuario transferir a 3eros. Se hace una request a la página de www.indecon.site/last en la página Mis Cuentas.

Para podr ejecutar los test se debe ejecutar el comando 'rails spec', el cual ejecutará test para la funcionalidad de transferencias. Estos test evaluan que la request a la página index tenga código 200 y además que se renderice los elemnetos de la vista. Por otra parte, en cuanto al modelo, los test evaluan la creación de nuevas entidades de transferencias y que funcionen correctamente según lo que necesitamos en la app.


