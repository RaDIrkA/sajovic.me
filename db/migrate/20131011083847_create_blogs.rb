class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :naslov
      t.text :opis

      t.timestamps
    end
  end
end
