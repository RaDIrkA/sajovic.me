class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.text :content

      t.timestamps
    end
  end
end
