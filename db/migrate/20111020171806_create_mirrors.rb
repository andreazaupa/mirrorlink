class CreateMirrors < ActiveRecord::Migration
  def change
    create_table :mirrors do |t|
      t.string :uri
      t.string :slug

      t.timestamps
    end
  end
end
