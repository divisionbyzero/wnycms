class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.text :body
      t.belongs_to :author
      t.belongs_to :page

      t.timestamps
    end
    
    add_index :comments, :author_id
    add_index :comments, :page_id
    add_index :comments, :created_at
    
  end

  def self.down
    drop_table :comments
    
    remove_index :comments, :author_id
    remove_index :comments, :page_id
    remove_index :comments, :created_at
  end
end
