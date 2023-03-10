class Usuario < ApplicationRecord
    validates :nombre, presence: true 
    validates :apellido, presence: true
    validates :ciudad, presence: true
    validates :rol, presence: true
    validates :unidad, presence: true
end
