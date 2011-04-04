class CreateTechnologies < ActiveRecord::Migration
  def self.up
    create_table :technologies do |t|
      t.string :name
      t.timestamps
    end
  end

  def self.down
    drop_table :technologies
  end
end
