class CreateFormularios < ActiveRecord::Migration[7.0]
  def change
    create_table :formularios do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :cell 
      t.string :company
      t.string :icon
     

      t.timestamps
    end
  end
end
