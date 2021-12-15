class Transferencium < ApplicationRecord
    belongs_to :sender , class_name: 'Usuario'
    belongs_to :recipient, class_name: 'Usuario'
end
