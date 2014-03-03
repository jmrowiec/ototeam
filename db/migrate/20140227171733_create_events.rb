class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :start
      t.string :desc
      t.datetime :invFrom
      t.datetime :invTo
      t.integer :limitFrom
      t.integer :limitTo
      t.integer :answerTime
      t.boolean :showPpls

      t.timestamps
    end
  end
end
