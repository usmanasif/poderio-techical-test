class CreateTenants < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :tenant_key

      t.timestamps
    end
  end
end
