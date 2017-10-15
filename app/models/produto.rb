class Produto < ApplicationRecord
  validates :preco, presence: true
  validates :quantidade, presence: true
  validates :nome, length: { minimum: 5 }
  validates :descricao, length: { minimum: 10, maximum: 200 }
end