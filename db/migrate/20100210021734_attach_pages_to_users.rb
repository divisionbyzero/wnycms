class AttachPagesToUsers < ActiveRecord::Migration
  def self.up
    add_column :pages, :user_id, :integer
    add_index :pages, :user_id
  end

  def self.down
    remove_column :pages, :user_id
  end
end
