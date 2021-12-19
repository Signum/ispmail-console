class CreateAliasesTable < ActiveRecord::Migration[6.1]
  def change
    create_table :virtual_aliases do |t|
      t.string :source, limit: 100, null: false
      t.string :destination, limit: 100, null: false
      t.integer :domain_id, references: [:virtual_domains, :id]

      t.timestamps
    end
  end
end
