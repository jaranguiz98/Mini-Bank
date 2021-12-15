class Usuario < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :accounts, dependent: :destroy
  has_many :sent_transferencias, class_name: 'Transferencia', foreign_key: 'sender_id', dependent: :destroy
  has_many :received_transferencias, class_name: 'Transferencia', foreign_key: 'recipient_id', dependent: :destroy
end
