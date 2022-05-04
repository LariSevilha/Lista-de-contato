class CreateFormularios < ActiveRecord::Migration[7.0]
  def change
    create_table :formularios do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :cell
      t.string :icon
      t.string :company

      t.timestamps
    end
  end
end
