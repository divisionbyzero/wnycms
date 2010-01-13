class AddPageSlug < ActiveRecord::Migration
  def self.up
    add_column :pages, :slug, :string, :null => false, :unique => true
    add_index :pages, :slug
  end

  def self.down
    remove_column :pages, :slug
  end
end
