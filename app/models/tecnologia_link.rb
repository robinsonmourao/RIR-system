class TecnologiaLink < ApplicationRecord
  attribute :codigo_tecnologia_link, :integer
  attribute :descricao, :integer

  has_many :atendimento

  validates :descricao, presence: true, inclusion: { in: [1, 2, 3] }
end
