class Account < ApplicationRecord
    belongs_to :usuario
    has_many :transferencium, dependent: :destroy
end
