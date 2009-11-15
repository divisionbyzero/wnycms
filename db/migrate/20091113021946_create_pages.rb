class CreatePages < ActiveRecord::Migration
  def self.up
    create_table :pages do |table|
      table.string :title
      table.text :body
      table.string :category

      table.timestamps
    end
  end

  def self.down
    drop_table :pages
  end
end
