class CreateDomainsTable < ActiveRecord::Migration[6.1]
  def change
    create_table :virtual_domains do |t|
      t.string :name, limit: 50, null: false

      t.timestamps
    end
    add_index :virtual_domains, :name, unique: true
  end
end
