class User < ApplicationRecord
  # Módulos padrão do DEVISE.
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # Outros módulos disponíveis:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
         
  has_many :favorites
  has_many :recently_heards
end
