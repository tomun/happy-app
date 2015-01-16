class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.text :saying
      t.text :source

      t.timestamps null: false
    end
  end
end
