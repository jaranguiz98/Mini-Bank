
# Mini-Bank

# README

Mini bank es una aplicación web, realizada en ruby on rails, la cual cuenta con tres modelos importantes: Usuarios, Transferenacias y Cuentas. Inicialmente se deberá crear una base de datos con el comando en la terminal 'rails db:create' y luego migrar los modelos con 'rails db:migrate'. Luego, se podrá entrar al inicio de la página con la creación de un usuario, que le permitirá acceder a las cuentas y en caso de haber otro usuario transferir a 3eros. Se hace una request a la página de www.indecon.site/last en la página Mis Cuentas.

Para poder ejecutar los test se debe correr el comando 'rails spec', el cual ejecutará tests para la funcionalidad de las transferencias. Estos tests evaluan que la request a la página index tenga código 200 y además que se renderice los elementos de la vista. Por otra parte, en cuanto al modelo, los test evaluan la creación de nuevas entidades de transferencias y que funcionen correctamente según lo que necesitamos en la app. Se cubre un total del 50.98% de los casos de la app con estos test, los cuales se pueden mejorar incluyendo los otros modelos.


