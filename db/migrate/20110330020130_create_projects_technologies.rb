class CreateProjectsTechnologies < ActiveRecord::Migration
  def self.up
    create_table :projects_technologies, :id => false do |t|
      t.references :project
      t.references :technology
    end
  end

  def self.down
    drop_table :projects_technologies
  end
end
