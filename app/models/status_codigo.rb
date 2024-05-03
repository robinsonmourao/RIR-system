class StatusCodigo < ApplicationRecord
  self.table_name = 'status_codigo'

  attribute :codigo_status, :integer
  attribute :descricao, :text, default: 'pendente'

  has_one :status

  validates :codigo_status, presence: true
  validates :descricao, presence: true, inclusion: { in: ['ativo', 'cancelado', 'suspenso', 'bloqueado', 'pendente'] }
end
