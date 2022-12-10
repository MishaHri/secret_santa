class CreatePartyMembers < ActiveRecord::Migration[7.0]
  def change
    create_table :party_members do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :role
      t.references :draw, null: false, foreign_key: true
      t.timestamps
    end
  end
end
