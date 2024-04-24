class CreateEquipamentos < ActiveRecord::Migration[7.1]
  def up
    execute <<-SQL
      CREATE TABLE equipamentos(
        codigo_equipamento INTEGER PRIMARY KEY AUTOINCREMENT,
        descricao INTEGER NOT NULL,
        mac_equipamento TEXT,
        serial_equipamento TEXT,

        CHECK (descricao IN(1,2,3,4,5))
      );
    SQL
  end

  def down
    execute <<-SQL
      DROP TABLE IF EXISTS equipamentos;
    SQL
  end
end
