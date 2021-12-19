class CreateUsersTable < ActiveRecord::Migration[6.1]
  def change
    create_table :virtual_users do |t|
      t.string :email, limit: 100, null: false
      t.string :password, limit: 150, null: false
      t.bigint :quota, default: 0, null: false
      t.integer :domain_id, references: [:virtual_domains, :id]

      t.timestamps
    end
  end
end
