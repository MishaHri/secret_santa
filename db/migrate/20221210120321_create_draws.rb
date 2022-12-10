class CreateDraws < ActiveRecord::Migration[7.0]
  def change
    create_table :draws do |t|
      t.string :budget
      t.string :date_of_presents_exchange
      t.timestamps
    end
  end
end
