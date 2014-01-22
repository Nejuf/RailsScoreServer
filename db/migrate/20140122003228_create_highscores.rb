class CreateHighscores < ActiveRecord::Migration
  def change
    create_table :highscores do |t|
      t.string :name, null: false, default: "???"
      t.integer :score, null: false, default: 0
      t.integer :ip

      t.timestamps
    end
    add_index :highscores, :name
    add_index :highscores, :ip
  end
end
