class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users, :force => true do |t|
      t.string   :alias,               :limit => 16
      t.string   :name,                :limit => 64
      t.string   :email,               :null => false
      t.string   :crypted_password,    :null => false
      t.string   :password_salt,       :null => false
      t.string   :persistence_token,   :null => false
      t.string   :single_access_token, :null => false
      t.string   :perishable_token,    :default => "", :null => false
      t.integer  :login_count,         :default => 0,  :null => false
      t.integer  :failed_login_count,  :default => 0,  :null => false
      t.datetime :last_request_at
      t.datetime :current_login_at
      t.datetime :last_login_at
      t.string   :current_login_ip
      t.string   :last_login_ip
      t.boolean  :system
      t.text     :about
      t.text     :bio
      t.datetime :created_at
      t.datetime :updated_at
    end

    add_index "users", ["email"], :name => "index_users_on_email"
    add_index "users", ["perishable_token"], :name => "index_users_on_perishable_token"
  end

  def self.down
    drop_table :users
  end
end
