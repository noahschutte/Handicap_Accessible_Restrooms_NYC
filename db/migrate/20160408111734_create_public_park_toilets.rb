class CreatePublicParkToilets < ActiveRecord::Migration
  def change
    create_table :public_park_toilets do |t|
      t.string :name
      t.string :location
      t.string :open_year_round
      t.string :handicap_accessible
      t.string :borough
      t.string :comments

      t.timestamps null: false
    end
  end
end
